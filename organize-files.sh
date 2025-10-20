#!/bin/bash

# Andrea Betrina Portfolio - File Organization Script
# This script organizes all images into proper folders with meaningful names

echo "🚀 Starting portfolio file organization..."

# Create organized directory structure
mkdir -p assets/images/{profile,projects,achievements,hobbies,certificates,about,misc}
mkdir -p assets/css
mkdir -p assets/js

# ==========================================
# PROFILE IMAGES
# ==========================================
echo "📸 Organizing profile images..."

# Main profile photo
if [ -f "images/WhatsApp Image 2025-10-11 at 9.48.19 AM.jpeg" ]; then
    cp "images/WhatsApp Image 2025-10-11 at 9.48.19 AM.jpeg" "assets/images/profile/andrea-profile.jpg"
fi

# ==========================================
# ABOUT PAGE IMAGES
# ==========================================
echo "🎭 Organizing about page images..."

# Personality images
[ -f "images/flower.jpg" ] && cp "images/flower.jpg" "assets/images/about/artist-flower.jpg"
[ -f "images/dance.jpg" ] && cp "images/dance.jpg" "assets/images/about/dancer.jpg"
[ -f "images/trophy.jpg" ] && cp "images/trophy.jpg" "assets/images/about/athlete-trophy.jpg"

# ==========================================
# PROJECT IMAGES
# ==========================================
echo "💻 Organizing project images..."

# Snapchat & Captioner Demo
[ -f "images/Screenshot (504).png" ] && cp "images/Screenshot (504).png" "assets/images/projects/snapchat-captioner-demo.png"

# Tudu App
[ -f "images/Screenshot (424).png" ] && cp "images/Screenshot (424).png" "assets/images/projects/tudu-app.png"

# Portfolio thumbnail
[ -f "images/Your paragraph text.png" ] && cp "images/Your paragraph text.png" "assets/images/projects/portfolio-thumbnail.png"

# Digital Doodling
[ -f "images/images (1).jpg" ] && cp "images/images (1).jpg" "assets/images/projects/doodling-thumbnail.jpg"
[ -f "images/Copy of FREE Template Scrapbook Carousel (1).png" ] && cp "images/Copy of FREE Template Scrapbook Carousel (1).png" "assets/images/projects/doodle-1.png"
[ -f "images/serenity in bloom (1).png" ] && cp "images/serenity in bloom (1).png" "assets/images/projects/doodle-2-serenity.png"
[ -f "images/Untitled design (1).png" ] && cp "images/Untitled design (1).png" "assets/images/projects/doodle-3.png"

# Screenshots for other projects
[ -f "images/Screenshot (420).png" ] && cp "images/Screenshot (420).png" "assets/images/projects/project-screenshot-1.png"
[ -f "images/Screenshot (422).png" ] && cp "images/Screenshot (422).png" "assets/images/projects/project-screenshot-2.png"
[ -f "images/Screenshot (423).png" ] && cp "images/Screenshot (423).png" "assets/images/projects/project-screenshot-3.png"
[ -f "images/Screenshot (425).png" ] && cp "images/Screenshot (425).png" "assets/images/projects/project-screenshot-4.png"

# ==========================================
# HOBBIES PAGE IMAGES
# ==========================================
echo "🎨 Organizing hobbies page images..."

[ -f "images/head.jpg" ] && cp "images/head.jpg" "assets/images/hobbies/art-6-head.jpg"
[ -f "images/my-journey-scrapbook.png" ] && cp "images/my-journey-scrapbook.png" "assets/images/hobbies/journey-scrapbook.png"
[ -f "images/beliveing myself.png" ] && cp "images/beliveing myself.png" "assets/images/hobbies/believing-myself.png"

# Numbered hobby images
[ -f "images/1744825576782.jpg" ] && cp "images/1744825576782.jpg" "assets/images/hobbies/hobby-1.jpg"
[ -f "images/1744966012525.jpg" ] && cp "images/1744966012525.jpg" "assets/images/hobbies/hobby-2.jpg"
[ -f "images/1744972176562.jpg" ] && cp "images/1744972176562.jpg" "assets/images/hobbies/hobby-3.jpg"
[ -f "images/1745243879045 (1).jpg" ] && cp "images/1745243879045 (1).jpg" "assets/images/hobbies/hobby-4.jpg"
[ -f "images/1749205892678.jpg" ] && cp "images/1749205892678.jpg" "assets/images/hobbies/hobby-5.jpg"
[ -f "images/1751186865855.jpg" ] && cp "images/1751186865855.jpg" "assets/images/hobbies/hobby-6.jpg"
[ -f "images/1756777026250.jpg" ] && cp "images/1756777026250.jpg" "assets/images/hobbies/hobby-7.jpg"
[ -f "images/1758651063474.jpg" ] && cp "images/1758651063474.jpg" "assets/images/hobbies/hobby-8.jpg"
[ -f "images/1758675851807.jpg" ] && cp "images/1758675851807.jpg" "assets/images/hobbies/hobby-9.jpg"

# ==========================================
# ACHIEVEMENT IMAGES
# ==========================================
echo "🏆 Organizing achievement images..."

# Basketball/Sports
[ -f "images/running 200m.jpg" ] && cp "images/running 200m.jpg" "assets/images/achievements/running-200m.jpg"
[ -f "images/table.jpg" ] && cp "images/table.jpg" "assets/images/achievements/table-tennis.jpg"

# Speaking/Presentations
[ -f "images/speaker.jpg" ] && cp "images/speaker.jpg" "assets/images/achievements/speaker.jpg"
[ -f "images/speech.jpg" ] && cp "images/speech.jpg" "assets/images/achievements/speech.jpg"
[ -f "images/speechooro.jpg" ] && cp "images/speechooro.jpg" "assets/images/achievements/speech-ooro.jpg"

# Events & Leadership
[ -f "images/build.jpg" ] && cp "images/build.jpg" "assets/images/achievements/build-event.jpg"
[ -f "images/chall.jpg" ] && cp "images/chall.jpg" "assets/images/achievements/challenge.jpg"
[ -f "images/hacc.jpg" ] && cp "images/hacc.jpg" "assets/images/achievements/hackathon.jpg"

# People/Team photos
[ -f "images/aru.jpg" ] && cp "images/aru.jpg" "assets/images/achievements/team-aru.jpg"
[ -f "images/girl.jpg" ] && cp "images/girl.jpg" "assets/images/achievements/team-1.jpg"
[ -f "images/girll.jpg" ] && cp "images/girll.jpg" "assets/images/achievements/team-2.jpg"
[ -f "images/jall.jpg" ] && cp "images/jall.jpg" "assets/images/achievements/team-3.jpg"
[ -f "images/rohini.jpg" ] && cp "images/rohini.jpg" "assets/images/achievements/team-rohini.jpg"
[ -f "images/xav.jpg" ] && cp "images/xav.jpg" "assets/images/achievements/xav.jpg"

# Misc achievement images
[ -f "images/2024bb.jpg" ] && cp "images/2024bb.jpg" "assets/images/achievements/2024-bb.jpg"
[ -f "images/205bb.jpg" ] && cp "images/205bb.jpg" "assets/images/achievements/205-bb.jpg"
[ -f "images/pp.jpg" ] && cp "images/pp.jpg" "assets/images/achievements/pp.jpg"
[ -f "images/rapp.jpg" ] && cp "images/rapp.jpg" "assets/images/achievements/rapp.jpg"
[ -f "images/blind.jpg" ] && cp "images/blind.jpg" "assets/images/achievements/blind.jpg"

# WhatsApp achievement images
[ -f "images/WhatsApp Image 2025-10-18 at 1.19.34 AM.jpeg" ] && cp "images/WhatsApp Image 2025-10-18 at 1.19.34 AM.jpeg" "assets/images/achievements/achievement-1.jpg"
[ -f "images/WhatsApp Image 2025-10-18 at 11.41.38 PM.jpeg" ] && cp "images/WhatsApp Image 2025-10-18 at 11.41.38 PM.jpeg" "assets/images/achievements/achievement-2.jpg"
[ -f "images/WhatsApp Image 2025-10-18 at 6.54.05 AM (1).jpeg" ] && cp "images/WhatsApp Image 2025-10-18 at 6.54.05 AM (1).jpeg" "assets/images/achievements/achievement-3.jpg"
[ -f "images/WhatsApp Image 2025-10-18 at 6.54.05 AM.jpeg" ] && cp "images/WhatsApp Image 2025-10-18 at 6.54.05 AM.jpeg" "assets/images/achievements/achievement-4.jpg"
[ -f "images/WhatsApp Image 2025-10-19 at 12.15.00 AM.jpeg" ] && cp "images/WhatsApp Image 2025-10-19 at 12.15.00 AM.jpeg" "assets/images/achievements/achievement-5.jpg"
[ -f "images/WhatsApp Image 2025-10-19 at 7.18.04 AM.jpeg" ] && cp "images/WhatsApp Image 2025-10-19 at 7.18.04 AM.jpeg" "assets/images/achievements/achievement-6.jpg"

# ==========================================
# CERTIFICATE IMAGES
# ==========================================
echo "📜 Organizing certificate images..."

[ -f "images/GuviCertification - 3y11477U9nT9198bO5.png" ] && cp "images/GuviCertification - 3y11477U9nT9198bO5.png" "assets/images/certificates/guvi-certification.png"
[ -f "images/cisco.jpg" ] && cp "images/cisco.jpg" "assets/images/certificates/cisco.jpg"
[ -f "images/figma.jpg" ] && cp "images/figma.jpg" "assets/images/certificates/figma.jpg"
[ -f "images/python.jpg" ] && cp "images/python.jpg" "assets/images/certificates/python.jpg"
[ -f "images/genai.jpg" ] && cp "images/genai.jpg" "assets/images/certificates/genai.jpg"

# ==========================================
# MOVE CSS AND JS
# ==========================================
echo "📦 Moving CSS and JS files..."

# Copy CSS to assets (keep original for now)
[ -f "styles.css" ] && cp "styles.css" "assets/css/styles.css"

# Copy JS to assets
[ -f "script.js" ] && cp "script.js" "assets/js/main.js"
[ -f "scroll-animations.js" ] && cp "scroll-animations.js" "assets/js/scroll-animations.js"

# ==========================================
# CREATE README FOR IMAGES
# ==========================================
cat > assets/images/README.md << 'EOF'
# Image Organization Guide

## Folder Structure

### 📁 profile/
- `andrea-profile.jpg` - Main profile photo used in header/hero sections

### 📁 about/
- `artist-flower.jpg` - Artist personality section
- `dancer.jpg` - Dancer personality section
- `athlete-trophy.jpg` - Athlete personality section

### 📁 projects/
- `snapchat-captioner-demo.png` - Snapchat & Captioner project
- `tudu-app.png` - Tudu task manager
- `portfolio-thumbnail.png` - Portfolio project thumbnail
- `doodling-thumbnail.jpg` - Digital doodling thumbnail
- `doodle-1.png`, `doodle-2-serenity.png`, `doodle-3.png` - Doodle artworks
- `project-screenshot-*.png` - Various project screenshots

### 📁 hobbies/
- `art-6-head.jpg` - Art gallery image
- `journey-scrapbook.png` - Personal journey image
- `believing-myself.png` - Motivational image
- `hobby-1.jpg` to `hobby-9.jpg` - Timeline/gallery images

### 📁 achievements/
- `running-200m.jpg`, `table-tennis.jpg` - Sports achievements
- `speaker.jpg`, `speech.jpg` - Speaking achievements
- `build-event.jpg`, `challenge.jpg`, `hackathon.jpg` - Event participation
- `team-*.jpg` - Team collaboration photos
- `achievement-*.jpg` - Various achievement photos

### 📁 certificates/
- `guvi-certification.png` - GUVI course certificate
- `cisco.jpg`, `figma.jpg`, `python.jpg`, `genai.jpg` - Tech certificates

## Naming Conventions

- Use lowercase with hyphens: `my-image.jpg`
- Be descriptive: `speaker-toastmasters.jpg` not `img1.jpg`
- Include context: `achievement-basketball-captain.jpg`
- Use consistent formats: `.jpg` for photos, `.png` for graphics

## Image Optimization Tips

1. Compress images before uploading (use TinyPNG, ImageOptim)
2. Use appropriate dimensions (max 1920px width for hero images)
3. Use WebP format for better compression (future upgrade)
4. Add descriptive alt text in HTML
EOF

echo ""
echo "✅ File organization complete!"
echo ""
echo "📊 Organization Summary:"
echo "├── assets/"
echo "│   ├── css/        (stylesheets)"
echo "│   ├── js/         (scripts)"
echo "│   └── images/"
echo "│       ├── profile/"
echo "│       ├── about/"
echo "│       ├── projects/"
echo "│       ├── hobbies/"
echo "│       ├── achievements/"
echo "│       └── certificates/"
echo ""
echo "⚠️  Original 'images/' folder preserved for reference"
echo "💡 Update HTML files to use new paths: assets/images/..."
echo ""
