// ==========================================
// COMPREHENSIVE THEME MANAGEMENT
// ==========================================
// This file handles all theme switching, persistence, and initialization

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
  }

  /**
   * Get current theme
   */
  function getCurrentTheme() {
    return document.documentElement.getAttribute('data-theme') || DEFAULT_THEME;
  }

  /**
   * Set theme
   */
  function setTheme(theme) {
    const validTheme = (theme === DARK_THEME) ? DARK_THEME : LIGHT_THEME;
    document.documentElement.setAttribute('data-theme', validTheme);
    localStorage.setItem(THEME_KEY, validTheme);
    updateThemeIcon(validTheme);
    console.log(`Theme changed to: ${validTheme}`);
  }

  /**
   * Toggle between light and dark theme
   */
  function toggleTheme() {
    const currentTheme = getCurrentTheme();
    const newTheme = currentTheme === LIGHT_THEME ? DARK_THEME : LIGHT_THEME;
    setTheme(newTheme);
  }

  /**
   * Update theme icon
   */
  function updateThemeIcon(theme) {
    const themeIcon = document.getElementById('themeIcon');
    if (themeIcon) {
      themeIcon.textContent = theme === DARK_THEME ? DARK_ICON : LIGHT_ICON;
    }
  }

  /**
   * Setup theme toggle button listener
   */
  function setupThemeToggle() {
    const themeToggle = document.getElementById('themeToggle');
    
    if (themeToggle) {
      // Update icon on page load
      const currentTheme = getCurrentTheme();
      updateThemeIcon(currentTheme);

      // Add click listener
      themeToggle.addEventListener('click', function(e) {
        e.preventDefault();
        toggleTheme();
      });

      // Ensure button is accessible
      themeToggle.setAttribute('aria-pressed', getCurrentTheme() === DARK_THEME);
      
      // Update aria-pressed on theme change
      const observer = new MutationObserver(() => {
        const isDark = getCurrentTheme() === DARK_THEME;
        themeToggle.setAttribute('aria-pressed', isDark);
      });
      
      observer.observe(document.documentElement, {
        attributes: true,
        attributeFilter: ['data-theme']
      });
    }
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

  // Setup toggle on DOM ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', setupThemeToggle);
  } else {
    setupThemeToggle();
  }
})();
