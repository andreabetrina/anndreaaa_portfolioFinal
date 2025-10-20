// Andrea Betrina Portfolio - Main JavaScript
// Theme Management, Animations, and Interactions

// ==========================================
// THEME TOGGLE
// ==========================================
document.addEventListener('DOMContentLoaded', function() {
  const themeToggle = document.getElementById('themeToggle');
  const themeIcon = document.getElementById('themeIcon');
  const html = document.documentElement;
  
  // Set up theme toggle if button exists
  if (themeToggle && themeIcon) {
    // Sync icon with current theme (theme is already set by anti-flicker script)
    const currentTheme = html.getAttribute('data-theme') || 'light';
    themeIcon.textContent = currentTheme === 'dark' ? '☀️' : '🌕';
    
    // Toggle theme on button click
    themeToggle.addEventListener('click', function() {
      const oldTheme = html.getAttribute('data-theme') || 'light';
      const newTheme = oldTheme === 'light' ? 'dark' : 'light';
      
      // Update theme
      html.setAttribute('data-theme', newTheme);
      localStorage.setItem('theme', newTheme);
      
      // Update icon
      themeIcon.textContent = newTheme === 'dark' ? '☀️' : '🌕';
      
      console.log('Theme toggled from', oldTheme, 'to', newTheme);
    });
  }
});

// ==========================================
// SMOOTH SCROLL REVEAL ANIMATIONS
// ==========================================
const observerOptions = {
  threshold: 0.1,
  rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('show');
    }
  });
}, observerOptions);

// Observe all project items, cert cards, achievement items
document.querySelectorAll('.project-item, .cert-card, .achievement-item').forEach(el => {
  observer.observe(el);
});

// ==========================================
// FILTER FUNCTIONALITY
// ==========================================

// Project Filters
const projectFilters = document.querySelectorAll('.filter-btn');
const projectItems = document.querySelectorAll('.project-item');

if (projectFilters.length > 0) {
  projectFilters.forEach(btn => {
    btn.addEventListener('click', () => {
      // Update active state
      projectFilters.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      
      const filter = btn.getAttribute('data-filter');
      
      // Filter projects
      projectItems.forEach(item => {
        if (filter === 'all' || item.getAttribute('data-category') === filter) {
          item.style.display = 'flex';
          setTimeout(() => item.classList.add('show'), 10);
        } else {
          item.classList.remove('show');
          setTimeout(() => item.style.display = 'none', 300);
        }
      });
    });
  });
}

// Certificate Filters
const certFilters = document.querySelectorAll('.cert-filter-btn');
const certCards = document.querySelectorAll('.cert-card');

if (certFilters.length > 0) {
  certFilters.forEach(btn => {
    btn.addEventListener('click', () => {
      certFilters.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      
      const filter = btn.getAttribute('data-filter');
      
      certCards.forEach(card => {
        if (filter === 'all' || card.getAttribute('data-category') === filter) {
          card.style.display = 'flex';
          setTimeout(() => card.classList.add('show'), 10);
        } else {
          card.classList.remove('show');
          setTimeout(() => card.style.display = 'none', 300);
        }
      });
    });
  });
}

// Achievement Tabs
const achievementTabs = document.querySelectorAll('.achievement-tab');
const tabContents = document.querySelectorAll('.tab-content');

if (achievementTabs.length > 0) {
  achievementTabs.forEach(tab => {
    tab.addEventListener('click', () => {
      // Update active tab
      achievementTabs.forEach(t => t.classList.remove('active'));
      tab.classList.add('active');
      
      const target = tab.getAttribute('data-tab');
      
      // Show corresponding content
      tabContents.forEach(content => {
        content.classList.remove('active');
        if (content.getAttribute('data-content') === target) {
          setTimeout(() => content.classList.add('active'), 10);
        }
      });
    });
  });
}

// ==========================================
// PROGRESS BAR ANIMATIONS
// ==========================================
const progressBars = document.querySelectorAll('.progress-fill');

if (progressBars.length > 0) {
  const progressObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        const bar = entry.target;
        const percent = bar.getAttribute('data-percent');
        bar.style.width = percent + '%';
        progressObserver.unobserve(bar);
      }
    });
  }, { threshold: 0.5 });
  
  progressBars.forEach(bar => progressObserver.observe(bar));
}

// ==========================================
// PERSONALITY SELECTOR (About Page)
// ==========================================
const personalityBtns = document.querySelectorAll('.personality-btn');
const personalityCards = document.querySelectorAll('.personality-card');

if (personalityBtns.length > 0) {
  personalityBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      personalityBtns.forEach(b => b.classList.remove('active'));
      btn.classList.add('active');
      
      const target = btn.getAttribute('data-personality');
      
      personalityCards.forEach(card => {
        card.classList.remove('active');
        if (card.getAttribute('data-personality') === target) {
          setTimeout(() => card.classList.add('active'), 10);
        }
      });
    });
  });
}

// ==========================================
// SMOOTH SCROLLING FOR ANCHOR LINKS
// ==========================================
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
    const href = this.getAttribute('href');
    if (href !== '#' && href !== '') {
      e.preventDefault();
      const target = document.querySelector(href);
      if (target) {
        target.scrollIntoView({
          behavior: 'smooth',
          block: 'start'
        });
      }
    }
  });
});

// ==========================================
// BACK TO TOP BUTTON (Hobbies Page)
// ==========================================
const backToTopBtn = document.querySelector('.back-to-top');

if (backToTopBtn) {
  window.addEventListener('scroll', () => {
    if (window.pageYOffset > 300) {
      backToTopBtn.classList.add('visible');
    } else {
      backToTopBtn.classList.remove('visible');
    }
  });
  
  backToTopBtn.addEventListener('click', () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });
}

// ==========================================
// NAVBAR ACTIVE LINK HIGHLIGHT
// ==========================================
const navLinks = document.querySelectorAll('.nav-link');
const currentPage = window.location.pathname.split('/').pop() || 'index.html';

navLinks.forEach(link => {
  const linkPage = link.getAttribute('href');
  if (linkPage === currentPage || 
      (currentPage === '' && linkPage === 'index.html')) {
    link.classList.add('active');
  }
});

// ==========================================
// FLOATING ELEMENTS PARALLAX
// ==========================================
const floatIcons = document.querySelectorAll('.float-icon');

if (floatIcons.length > 0) {
  window.addEventListener('mousemove', (e) => {
    const x = e.clientX / window.innerWidth;
    const y = e.clientY / window.innerHeight;
    
    floatIcons.forEach((icon, index) => {
      const speed = (index + 1) * 0.5;
      const xMove = (x - 0.5) * speed * 20;
      const yMove = (y - 0.5) * speed * 20;
      icon.style.transform = `translate(${xMove}px, ${yMove}px)`;
    });
  });
}

// ==========================================
// PREVENT LAYOUT SHIFT
// ==========================================
window.addEventListener('load', () => {
  document.body.classList.add('loaded');
});

// ==========================================
// CONSOLE MESSAGE
// ==========================================
console.log('%c👋 Welcome to Andrea Betrina\'s Portfolio!', 'font-size: 20px; color: #ff90b3; font-weight: bold;');
console.log('%c✨ Made with love and code', 'font-size: 14px; color: #9d7cff;');
