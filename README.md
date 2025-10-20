# Andrea Betrina Portfolio - Project Documentation

## 📁 Project Structure

```
anndreaaa_portfolioFinal/
├── assets/
│   ├── css/
│   │   └── styles.css          # Main stylesheet (6861 lines)
│   ├── js/
│   │   ├── main.js             # Core JavaScript functionality
│   │   └── scroll-animations.js # Scroll reveal animations
│   └── images/
│       ├── profile/            # Profile/hero images
│       ├── about/              # About page personality images
│       ├── projects/           # Project thumbnails & screenshots
│       ├── hobbies/            # Hobby gallery & timeline images
│       ├── achievements/       # Achievement & event photos
│       ├── certificates/       # Certification images
│       └── README.md           # Image organization guide
│
├── pages/
│   ├── achievements/           # Individual achievement detail pages
│   │   ├── achievement-basher.html
│   │   ├── achievement-captain.html
│   │   ├── achievement-coordinator.html
│   │   ├── achievement-hosting.html
│   │   ├── achievement-presentation.html
│   │   └── achievement-toastmaster.html
│   ├── certifications/
│   │   └── outstanding-certificates.html
│   └── projects/               # Individual project detail pages
│       ├── project-captioner.html
│       ├── project-doodling.html
│       ├── project-guvibot.html
│       ├── project-portfolio.html
│       ├── project-sawit.html  # "This Portfolio" project
│       ├── project-snapchat.html
│       ├── project-speakease.html
│       └── project-tudu.html
│
├── index.html                  # Homepage
├── about.html                  # About page with personality sections
├── achievements.html           # Achievements gallery
├── certifications.html         # Certifications gallery
├── contact.html                # Contact form
├── hobbies.html                # Hobbies timeline & gallery
├── projects.html               # Projects gallery
├── skills.html                 # Skills showcase
│
├── organize-files.sh           # Image organization script
├── update-paths.sh             # Path update script
└── README.md                   # This file
```

## 🎨 Design System

### Color Palette

#### Light Mode
- **Primary Pink**: `rgba(255, 144, 179, 0.2)` - Soft pink background
- **Pink Glow**: `rgba(255, 144, 179, 0.5)` - Hover effects
- **Text**: `#333` - Dark gray
- **Background**: `#ffffff` - White
- **Accent**: Pink gradient borders and shadows

#### Dark Mode (Lavender Night)
- **Primary Lavender**: `rgba(157, 124, 255, 0.3)` - Soft lavender glow
- **Lavender Glow**: `rgba(157, 124, 255, 0.6)` - Animated pulses
- **Text**: `#e0e0e0` - Light gray
- **Background**: `#1a1a2e` - Dark navy
- **Accent**: Animated lavender glows

### Typography
- **Primary Font**: Poppins (300, 400, 500, 600, 700)
- **Decorative Font**: Caveat (handwriting style)
- **Base Size**: 16px
- **Headings**: Progressive scale with glow effects

### Component Styles

#### Buttons
```css
/* Standard Button */
background: white;
border: 2px solid rgba(255, 144, 179, 0.3);
box-shadow: 0 4px 15px rgba(255, 144, 179, 0.2);

/* Hover Effect */
background: rgba(255, 144, 179, 0.1);
border-color: rgba(255, 144, 179, 0.6);
transform: translateY(-2px);
```

#### Tech Stack Tags
```css
background: white;
border: 2px solid rgba(255, 144, 179, 0.3);
color: #333;
padding: 8px 16px;
border-radius: 25px;
box-shadow: 0 2px 8px rgba(255, 144, 179, 0.15);
```

#### Section Titles
```css
/* Light Mode */
text-shadow: 0 2px 12px rgba(255, 144, 179, 0.15);

/* Dark Mode */
text-shadow: 
  0 0 20px rgba(157, 124, 255, 0.6),
  0 0 40px rgba(157, 124, 255, 0.4);
animation: glow-pulse 3s ease-in-out infinite;
```

## 🔧 JavaScript Features

### Theme Management (`main.js`)
- Light/Dark mode toggle with localStorage persistence
- Smooth transitions between themes
- System preference detection

### Filter Systems
```javascript
// Projects filter (All/Web/Mobile/Design)
// Certifications filter (All/Technical/Design/Achievement)
// Achievements filter (All/Sports/Leadership/Tech)
```

### Scroll Animations
- IntersectionObserver for reveal-on-scroll
- Parallax effects on hero sections
- Smooth scroll behavior
- Back-to-top button with fade-in

### Interactive Elements
- Progress bars with animation on view
- Personality selector in about page
- Filter animations with fade effects
- Hover glow effects on cards

## 📱 Responsive Breakpoints

```css
/* Extra Small Phones */
@media (max-width: 360px) { }

/* Small Phones */
@media (max-width: 480px) { }

/* Large Phones */
@media (max-width: 600px) { }

/* Tablets */
@media (max-width: 768px) { }

/* Small Laptops */
@media (max-width: 1024px) { }

/* Desktop */
@media (min-width: 1200px) { }
```

## 🖼️ Image Naming Conventions

### Profile Images
- Format: `andrea-profile.jpg`
- Size: Optimized for hero sections

### About Images
- Format: `{trait}-{descriptor}.jpg`
- Examples: `artist-flower.jpg`, `dancer.jpg`, `athlete-trophy.jpg`

### Project Images
- Thumbnails: `{project-name}-thumbnail.{ext}`
- Screenshots: `{project-name}-screenshot-{number}.{ext}`
- Examples: `tudu-app.png`, `doodle-2-serenity.png`

### Hobby Images
- Timeline: `hobby-{number}.jpg` (chronological)
- Art: `art-{number}-{description}.jpg`
- Personal: `{descriptor}.png`

### Achievement Images
- Sports: `{sport-name}.jpg` (e.g., `running-200m.jpg`)
- Events: `{event-type}-{name}.jpg` (e.g., `build-event.jpg`)
- Team: `team-{name}.jpg` (e.g., `team-rohini.jpg`)
- Generic: `achievement-{number}.jpg`

### Certificates
- Format: `{certification-name}.{ext}`
- Examples: `guvi-certification.png`, `cisco.jpg`, `python.jpg`

## 🚀 Performance Optimizations

### CSS
- Hardware-accelerated animations (`transform: translate3d`)
- `backface-visibility: hidden` to prevent flickering
- Efficient selectors and specificity
- Minified for production (optional)

### Images
- Compressed formats (JPEG for photos, PNG for graphics)
- Descriptive alt text for accessibility
- Lazy loading with IntersectionObserver
- Responsive images where needed

### JavaScript
- Event delegation for filters
- Debounced scroll handlers
- localStorage caching for theme preference
- Minimal DOM manipulation

## 🎯 Key Features

### Navigation
- Sticky header with theme toggle
- Active link highlighting
- Smooth scroll to sections
- Mobile-responsive hamburger menu

### Accessibility
- Semantic HTML5 structure
- ARIA labels where needed
- Keyboard navigation support
- High contrast text in both themes
- Alt text for all images

### SEO
- Semantic heading hierarchy
- Meta descriptions
- Open Graph tags (can be added)
- Clean URL structure

## 📝 Content Sections

### Home (`index.html`)
- Hero section with profile
- Quick introduction
- CTA buttons

### About (`about.html`)
- Introduction
- Personality traits (Artist, Dancer, Athlete)
- Interactive personality selector
- Personal story

### Projects (`projects.html`)
- Filterable project gallery
- Tech stack displays
- Project detail pages with:
  - Overview & challenges
  - Features & tech stack
  - Development process
  - Learnings & outcomes

### Skills (`skills.html`)
- Technical skills with progress bars
  - Python (80%)
  - Java (65%)
  - C (60%)
- Soft skills showcase
- Tool proficiencies

### Achievements (`achievements.html`)
- Filterable achievement gallery
- Categories: Sports, Leadership, Tech
- Detail pages with stories

### Hobbies (`hobbies.html`)
- Timeline display
- Art gallery
- Personal interests
- Back-to-top button

### Certifications (`certifications.html`)
- Certificate gallery
- Outstanding certificates page
- Verification details

### Contact (`contact.html`)
- Contact form
- Social links
- Footer with credits
  - Text: Black (#000)
  - Name: Pink glow effect

## 🛠️ Maintenance Guide

### Adding New Images
1. Save image with descriptive name (lowercase-with-hyphens)
2. Place in appropriate `assets/images/{category}/` folder
3. Update HTML with path: `assets/images/{category}/{image-name}.ext`
4. Add alt text describing the image

### Creating New Project Pages
1. Copy template from existing project page
2. Update content sections
3. Add thumbnail to `assets/images/projects/`
4. Add entry in `projects.html` gallery
5. Update filter category if needed

### Theme Customization
- Colors: Edit CSS variables in `:root` and `[data-theme="dark"]`
- Fonts: Update `font-family` declarations
- Glow effects: Adjust `box-shadow` and `text-shadow` values
- Animations: Modify `@keyframes` in styles.css

### Adding New Pages
1. Create HTML file in root or appropriate subfolder
2. Include CSS: `<link rel="stylesheet" href="assets/css/styles.css">`
3. Include JS: `<script src="assets/js/main.js"></script>`
4. Add navigation link in all pages
5. Update active nav-link logic

## 📦 Deployment

### Build Steps
1. Test all pages in both light and dark modes
2. Verify all image paths are correct
3. Check responsive design on multiple devices
4. Validate HTML (W3C Validator)
5. Run Lighthouse audit for performance
6. Minify CSS and JS (optional)

### Hosting Options
- **GitHub Pages**: Free, easy deployment
- **Netlify**: Continuous deployment from Git
- **Vercel**: Optimized for modern web apps
- **Custom Server**: Apache/Nginx with HTTPS

### Pre-Deployment Checklist
- [ ] All images loading correctly
- [ ] Theme toggle working
- [ ] All links functional
- [ ] Forms validated
- [ ] Mobile responsive
- [ ] Cross-browser tested
- [ ] Meta tags configured
- [ ] Favicon added
- [ ] Analytics integrated (optional)
- [ ] Performance optimized

## 🔄 Version History

### v2.0 - File Organization (Latest)
- ✅ Organized all 57 images into categorized folders
- ✅ Renamed images with semantic naming
- ✅ Moved CSS to `assets/css/`
- ✅ Moved JavaScript to `assets/js/`
- ✅ Updated all HTML paths
- ✅ Created comprehensive documentation

### v1.5 - Comprehensive Audit
- ✅ Added 300+ lines of CSS fixes
- ✅ Implemented glow effects for all headings
- ✅ Unified button styling system
- ✅ Enhanced dark mode visibility
- ✅ Added 6 responsive breakpoints
- ✅ Anti-flickering optimizations
- ✅ Footer styling (black text, pink name)

### v1.0 - Initial Build
- ✅ Core HTML structure
- ✅ Pink gradient theme
- ✅ Dark mode implementation
- ✅ Project/achievement galleries
- ✅ Interactive filters
- ✅ Scroll animations

## 🤝 Credits

**Developer & Designer**: Andrea Betrina
**Font**: Poppins & Caveat (Google Fonts)
**Icons**: Font Awesome / Custom SVGs
**Inspiration**: Modern portfolio design trends

## 📞 Support

For questions or issues:
- Check this documentation first
- Review `assets/images/README.md` for image guidelines
- Test in browser DevTools for debugging
- Validate HTML/CSS with W3C tools

---

**Last Updated**: 2025
**Portfolio Version**: 2.0 (Organized)
**Status**: ✅ Production Ready
