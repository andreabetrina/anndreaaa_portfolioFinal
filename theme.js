// ==========================================
// COMPREHENSIVE THEME MANAGEMENT
// ==========================================
// This file handles all theme switching, persistence, and initialization
// This is the ONLY source of truth for theme management

(function() {
  'use strict';

  // Theme configuration
  const THEME_KEY = 'theme';
  const LIGHT_THEME = 'light';
  const DARK_THEME = 'dark';
  const DEFAULT_THEME = LIGHT_THEME;

  // Light mode icon and Dark mode icon
  const LIGHT_ICON = '🌕';
  const DARK_ICON = '☀️';

  /**
   * Initialize theme on page load
   * This runs before DOMContentLoaded to prevent flashing
   */
  function initializeTheme() {
    const savedTheme = localStorage.getItem(THEME_KEY) || DEFAULT_THEME;
    document.documentElement.setAttribute('data-theme', savedTheme);
    updateThemeIcon(savedTheme);
  }

  /**
   * Get current theme from data-theme attribute
   */
  function getCurrentTheme() {
    return document.documentElement.getAttribute('data-theme') || DEFAULT_THEME;
  }

  /**
   * Set theme and persist to localStorage
   */
  function setTheme(theme) {
    const validTheme = (theme === DARK_THEME) ? DARK_THEME : LIGHT_THEME;
    document.documentElement.setAttribute('data-theme', validTheme);
    localStorage.setItem(THEME_KEY, validTheme);
    updateThemeIcon(validTheme);
    console.log(`✓ Theme changed to: ${validTheme}`);
  }

  /**
   * Toggle between light and dark theme
   * Ensures proper revert by reading current state and switching
   */
  function toggleTheme() {
    const currentTheme = getCurrentTheme();
    const newTheme = currentTheme === LIGHT_THEME ? DARK_THEME : LIGHT_THEME;
    setTheme(newTheme);
  }

  /**
   * Update theme icon to match current theme
   */
  function updateThemeIcon(theme) {
    const themeIcon = document.getElementById('themeIcon');
    if (themeIcon) {
      const newIcon = theme === DARK_THEME ? DARK_ICON : LIGHT_ICON;
      themeIcon.textContent = newIcon;
      console.log(`✓ Icon updated to: ${newIcon} (${theme} mode)`);
    }
  }

  /**
   * Setup theme toggle button listener
   * This runs on DOMContentLoaded to ensure DOM is ready
   */
  function setupThemeToggle() {
    const themeToggle = document.getElementById('themeToggle');
    
    if (themeToggle) {
      // Initialize icon on page load
      const currentTheme = getCurrentTheme();
      updateThemeIcon(currentTheme);

      // Remove any existing listeners to prevent duplicates
      // by replacing with a fresh clone
      const newToggle = themeToggle.cloneNode(true);
      themeToggle.parentNode.replaceChild(newToggle, themeToggle);

      // Add single click listener to new element
      newToggle.addEventListener('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        console.log(`Theme toggle clicked. Current: ${getCurrentTheme()}`);
        toggleTheme();
      });

      // Update aria-pressed attribute
      updateAriaPressed(newToggle);
      
      console.log('✓ Theme toggle initialized');
    }
  }

  /**
   * Update aria-pressed attribute for accessibility
   */
  function updateAriaPressed(button) {
    if (button) {
      const isDark = getCurrentTheme() === DARK_THEME;
      button.setAttribute('aria-pressed', isDark ? 'true' : 'false');
    }
  }

  /**
   * Watch for theme changes and update UI accordingly
   */
  function setupThemeObserver() {
    const observer = new MutationObserver((mutations) => {
      mutations.forEach((mutation) => {
        if (mutation.attributeName === 'data-theme') {
          const newTheme = getCurrentTheme();
          updateThemeIcon(newTheme);
          const themeToggle = document.getElementById('themeToggle');
          if (themeToggle) {
            updateAriaPressed(themeToggle);
          }
          console.log(`✓ Theme observer detected change to: ${newTheme}`);
        }
      });
    });

    observer.observe(document.documentElement, {
      attributes: true,
      attributeFilter: ['data-theme'],
      attributeOldValue: true
    });
  }

  /**
   * Expose global API for theme management
   */
  window.themeManager = {
    init: initializeTheme,
    get: getCurrentTheme,
    set: setTheme,
    toggle: toggleTheme,
    setupToggle: setupThemeToggle
  };

  // Initialize theme immediately (before page renders)
  initializeTheme();

  // Setup observer to watch for attribute changes
  setupThemeObserver();

  // Setup toggle on DOM ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', setupThemeToggle);
  } else {
    setupThemeToggle();
  }

  // Safety check to reinitialize if theme.js loads late
  window.addEventListener('load', function() {
    if (!document.getElementById('themeToggle')?.onclick) {
      setupThemeToggle();
    }
  });
})();
