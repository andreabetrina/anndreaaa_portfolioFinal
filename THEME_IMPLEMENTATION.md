# Dark Mode & Light Mode Theme System - Implementation Guide

## Overview
The portfolio website now has a fully functional, persistent dark mode and light mode toggle system that works consistently across all pages.

## How It Works

### 1. **Theme Files**

#### `theme.js` - Central Theme Management
- Location: `/workspaces/anndreaaa_portfolioFinal/theme.js`
- Purpose: Manages all theme switching and persistence logic
- Key Functions:
  - `themeManager.init()` - Initializes theme on page load
  - `themeManager.get()` - Returns current theme
  - `themeManager.set(theme)` - Sets theme to 'light' or 'dark'
  - `themeManager.toggle()` - Toggles between light and dark
  - `themeManager.setupToggle()` - Binds toggle button to click handler

#### `script.js` - Main Application Logic
- Contains all other functionality (animations, filters, etc.)
- Theme management is now delegated to `theme.js`
- Theme toggle button click handler is set up by `theme.js`

#### `styles.css` - Theme Styling
- Light mode (default): Base CSS variables and styles
- Dark mode: Applied via `html[data-theme="dark"]` selector
- All dark mode styles use this attribute selector pattern

### 2. **Theme Persistence**
- Theme preference is stored in `localStorage` under the key `'theme'`
- When user selects a theme, it's automatically saved
- On page load, the saved theme is restored
- Default theme is **light mode**

### 3. **Anti-Flicker Script**
- Located in the `<head>` of every HTML file
- Runs before page renders to prevent theme flashing
- Sets `data-theme` attribute on `<html>` element immediately
- Runs on every page (main pages and sub-pages)

### 4. **Implementation on Every Page**

Each HTML file includes in the `<head>`:

```html
<!-- Anti-flicker script: Set theme before page renders -->
<script>
  (function() {
    const theme = localStorage.getItem('theme') || 'light';
    document.documentElement.setAttribute('data-theme', theme);
  })();
</script>
<!-- Theme Management Script -->
<script src="[path-to]/theme.js"></script>
```

#### Path Examples:
- **Root pages** (e.g., `index.html`): `<script src="theme.js"></script>`
- **Sub-pages** (e.g., `pages/achievements/achievement-basher.html`): `<script src="../../theme.js"></script>`

### 5. **Updated Pages**
✅ All 23 HTML pages have been configured:

**Main Pages:**
- index.html
- about.html
- skills.html
- contact.html
- projects.html
- achievements.html
- certifications.html
- hobbies.html
- debug.html

**Achievement Pages (6):**
- pages/achievements/achievement-basher.html
- pages/achievements/achievement-captain.html
- pages/achievements/achievement-coordinator.html
- pages/achievements/achievement-hosting.html
- pages/achievements/achievement-presentation.html
- pages/achievements/achievement-toastmaster.html

**Project Pages (8):**
- pages/projects/project-captioner.html
- pages/projects/project-doodling.html
- pages/projects/project-guvibot.html
- pages/projects/project-portfolio.html
- pages/projects/project-sawit.html
- pages/projects/project-snapchat.html
- pages/projects/project-speakease.html
- pages/projects/project-tudu.html

**Certification Pages (1):**
- pages/certifications/outstanding-certificates.html

## Key Features

✅ **Default Theme:** Light mode by default
✅ **Toggle Button:** Located in top-left corner with emoji icon
✅ **Icon Updates:** 🌕 (light mode) ↔️ ☀️ (dark mode)
✅ **Persistent:** User preference saved in localStorage
✅ **No Flashing:** Anti-flicker script prevents theme flashing on load
✅ **Consistent:** Works on all 23 pages
✅ **Smooth Transitions:** CSS transitions for theme changes
✅ **Global API:** `window.themeManager` object for programmatic access

## Using the Theme System

### Toggle Theme Programmatically
```javascript
// Get current theme
window.themeManager.get(); // Returns 'light' or 'dark'

// Set specific theme
window.themeManager.set('dark');
window.themeManager.set('light');

// Toggle between themes
window.themeManager.toggle();
```

### CSS Dark Mode Styling
```css
/* Light mode (default) */
body {
  background-color: white;
  color: #333;
}

/* Dark mode */
html[data-theme="dark"] body {
  background-color: #1a1a1a;
  color: #f0f0f0;
}
```

## Testing the Theme System

1. **Click the toggle button** in the top-left corner (🌕 / ☀️)
2. **Navigate between pages** - theme persists
3. **Refresh the page** - theme is remembered
4. **Open in a new tab/window** - all pages load with your saved theme
5. **Clear localStorage** - theme resets to light mode default

## Browser Compatibility
- Works on all modern browsers (Chrome, Firefox, Safari, Edge)
- Requires JavaScript enabled
- localStorage support required (standard in modern browsers)

## Troubleshooting

If the theme toggle isn't working:
1. Check browser console for errors
2. Verify `theme.js` is loading (check Network tab)
3. Ensure `localStorage` is enabled
4. Verify all pages include both scripts in correct order:
   - Anti-flicker script first (in `<head>`)
   - `theme.js` script second (in `<head>`)
   - Other scripts can follow

## Future Enhancements
- System/OS theme detection as default
- Smooth transition animations
- Additional color themes
- Theme preview before applying
