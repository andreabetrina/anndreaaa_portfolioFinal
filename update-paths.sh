#!/bin/bash

# Update HTML file paths to use new organized structure
# This script updates all image, CSS, and JS references

echo "🔄 Updating file paths in HTML files..."

# ==========================================
# UPDATE ROOT HTML FILES
# ==========================================

echo "📝 Updating root HTML files..."

# Update CSS and JS paths in all root HTML files
for file in *.html; do
    if [ -f "$file" ]; then
        # Update CSS path
        sed -i 's|<link rel="stylesheet" href="styles.css">|<link rel="stylesheet" href="assets/css/styles.css">|g' "$file"
        
        # Update JS paths
        sed -i 's|<script src="script.js">|<script src="assets/js/main.js">|g' "$file"
        sed -i 's|<script src="scroll-animations.js">|<script src="assets/js/scroll-animations.js">|g' "$file"
        
        echo "  ✓ Updated $file"
    fi
done

# ==========================================
# UPDATE ABOUT.HTML
# ==========================================

echo "📝 Updating about.html..."

sed -i 's|images/flower.jpg|assets/images/about/artist-flower.jpg|g' about.html
sed -i 's|images/dance.jpg|assets/images/about/dancer.jpg|g' about.html
sed -i 's|images/trophy.jpg|assets/images/about/athlete-trophy.jpg|g' about.html

# ==========================================
# UPDATE HOBBIES.HTML
# ==========================================

echo "📝 Updating hobbies.html..."

sed -i 's|images/head.jpg|assets/images/hobbies/art-6-head.jpg|g' hobbies.html
sed -i 's|images/my-journey-scrapbook.png|assets/images/hobbies/journey-scrapbook.png|g' hobbies.html
sed -i 's|images/beliveing myself.png|assets/images/hobbies/believing-myself.png|g' hobbies.html

# Replace timestamp images
sed -i 's|images/1744825576782.jpg|assets/images/hobbies/hobby-1.jpg|g' hobbies.html
sed -i 's|images/1744966012525.jpg|assets/images/hobbies/hobby-2.jpg|g' hobbies.html
sed -i 's|images/1744972176562.jpg|assets/images/hobbies/hobby-3.jpg|g' hobbies.html
sed -i 's|images/1745243879045 (1).jpg|assets/images/hobbies/hobby-4.jpg|g' hobbies.html
sed -i 's|images/1749205892678.jpg|assets/images/hobbies/hobby-5.jpg|g' hobbies.html
sed -i 's|images/1751186865855.jpg|assets/images/hobbies/hobby-6.jpg|g' hobbies.html
sed -i 's|images/1756777026250.jpg|assets/images/hobbies/hobby-7.jpg|g' hobbies.html
sed -i 's|images/1758651063474.jpg|assets/images/hobbies/hobby-8.jpg|g' hobbies.html
sed -i 's|images/1758675851807.jpg|assets/images/hobbies/hobby-9.jpg|g' hobbies.html

# ==========================================
# UPDATE PROJECTS.HTML
# ==========================================

echo "📝 Updating projects.html..."

sed -i 's|images/Screenshot (424).png|assets/images/projects/tudu-app.png|g' projects.html
sed -i 's|images/Your paragraph text.png|assets/images/projects/portfolio-thumbnail.png|g' projects.html
sed -i 's|images/images (1).jpg|assets/images/projects/doodling-thumbnail.jpg|g' projects.html

# ==========================================
# UPDATE CERTIFICATIONS.HTML
# ==========================================

echo "📝 Updating certifications.html..."

sed -i 's|images/GuviCertification - 3y11477U9nT9198bO5.png|assets/images/certificates/guvi-certification.png|g' certifications.html
sed -i 's|images/cisco.jpg|assets/images/certificates/cisco.jpg|g' certifications.html
sed -i 's|images/figma.jpg|assets/images/certificates/figma.jpg|g' certifications.html
sed -i 's|images/python.jpg|assets/images/certificates/python.jpg|g' certifications.html
sed -i 's|images/genai.jpg|assets/images/certificates/genai.jpg|g' certifications.html

# ==========================================
# UPDATE ACHIEVEMENTS.HTML
# ==========================================

echo "📝 Updating achievements.html..."

# Update all WhatsApp images
sed -i 's|images/WhatsApp Image 2025-10-18 at 1.19.34 AM.jpeg|assets/images/achievements/achievement-1.jpg|g' achievements.html
sed -i 's|images/WhatsApp Image 2025-10-18 at 11.41.38 PM.jpeg|assets/images/achievements/achievement-2.jpg|g' achievements.html
sed -i 's|images/WhatsApp Image 2025-10-18 at 6.54.05 AM (1).jpeg|assets/images/achievements/achievement-3.jpg|g' achievements.html
sed -i 's|images/WhatsApp Image 2025-10-18 at 6.54.05 AM.jpeg|assets/images/achievements/achievement-4.jpg|g' achievements.html
sed -i 's|images/WhatsApp Image 2025-10-19 at 12.15.00 AM.jpeg|assets/images/achievements/achievement-5.jpg|g' achievements.html
sed -i 's|images/WhatsApp Image 2025-10-19 at 7.18.04 AM.jpeg|assets/images/achievements/achievement-6.jpg|g' achievements.html

# Update named images
sed -i 's|images/running 200m.jpg|assets/images/achievements/running-200m.jpg|g' achievements.html
sed -i 's|images/table.jpg|assets/images/achievements/table-tennis.jpg|g' achievements.html
sed -i 's|images/speaker.jpg|assets/images/achievements/speaker.jpg|g' achievements.html
sed -i 's|images/speech.jpg|assets/images/achievements/speech.jpg|g' achievements.html
sed -i 's|images/speechooro.jpg|assets/images/achievements/speech-ooro.jpg|g' achievements.html
sed -i 's|images/build.jpg|assets/images/achievements/build-event.jpg|g' achievements.html
sed -i 's|images/chall.jpg|assets/images/achievements/challenge.jpg|g' achievements.html
sed -i 's|images/hacc.jpg|assets/images/achievements/hackathon.jpg|g' achievements.html
sed -i 's|images/aru.jpg|assets/images/achievements/team-aru.jpg|g' achievements.html
sed -i 's|images/girl.jpg|assets/images/achievements/team-1.jpg|g' achievements.html
sed -i 's|images/girll.jpg|assets/images/achievements/team-2.jpg|g' achievements.html
sed -i 's|images/jall.jpg|assets/images/achievements/team-3.jpg|g' achievements.html
sed -i 's|images/rohini.jpg|assets/images/achievements/team-rohini.jpg|g' achievements.html
sed -i 's|images/xav.jpg|assets/images/achievements/xav.jpg|g' achievements.html
sed -i 's|images/2024bb.jpg|assets/images/achievements/2024-bb.jpg|g' achievements.html
sed -i 's|images/205bb.jpg|assets/images/achievements/205-bb.jpg|g' achievements.html
sed -i 's|images/pp.jpg|assets/images/achievements/pp.jpg|g' achievements.html
sed -i 's|images/rapp.jpg|assets/images/achievements/rapp.jpg|g' achievements.html
sed -i 's|images/blind.jpg|assets/images/achievements/blind.jpg|g' achievements.html

# ==========================================
# UPDATE PAGES/PROJECTS/*
# ==========================================

echo "📝 Updating project pages..."

# Update CSS and JS paths in all project pages
for file in pages/projects/*.html; do
    if [ -f "$file" ]; then
        # Update CSS path (go up 2 levels)
        sed -i 's|<link rel="stylesheet" href="../../styles.css">|<link rel="stylesheet" href="../../assets/css/styles.css">|g' "$file"
        
        # Update JS paths
        sed -i 's|<script src="../../script.js">|<script src="../../assets/js/main.js">|g' "$file"
        sed -i 's|<script src="../../scroll-animations.js">|<script src="../../assets/js/scroll-animations.js">|g' "$file"
        
        echo "  ✓ Updated $file"
    fi
done

# Update specific project images
sed -i 's|../../images/Screenshot (504).png|../../assets/images/projects/snapchat-captioner-demo.png|g' pages/projects/project-snapchat.html
sed -i 's|../../images/Your paragraph text.png|../../assets/images/projects/portfolio-thumbnail.png|g' pages/projects/project-sawit.html
sed -i 's|../../images/Copy of FREE Template Scrapbook Carousel (1).png|../../assets/images/projects/doodle-1.png|g' pages/projects/project-doodling.html
sed -i 's|../../images/serenity in bloom (1).png|../../assets/images/projects/doodle-2-serenity.png|g' pages/projects/project-doodling.html
sed -i 's|../../images/Untitled design (1).png|../../assets/images/projects/doodle-3.png|g' pages/projects/project-doodling.html

# ==========================================
# UPDATE PAGES/ACHIEVEMENTS/*
# ==========================================

echo "📝 Updating achievement pages..."

# Update CSS and JS paths in all achievement pages
for file in pages/achievements/*.html; do
    if [ -f "$file" ]; then
        # Update CSS path
        sed -i 's|<link rel="stylesheet" href="../../styles.css">|<link rel="stylesheet" href="../../assets/css/styles.css">|g' "$file"
        
        # Update JS paths
        sed -i 's|<script src="../../script.js">|<script src="../../assets/js/main.js">|g' "$file"
        sed -i 's|<script src="../../scroll-animations.js">|<script src="../../assets/js/scroll-animations.js">|g' "$file"
        
        echo "  ✓ Updated $file"
    fi
done

# ==========================================
# UPDATE PAGES/CERTIFICATIONS/*
# ==========================================

echo "📝 Updating certification pages..."

# Update CSS and JS paths
for file in pages/certifications/*.html; do
    if [ -f "$file" ]; then
        sed -i 's|<link rel="stylesheet" href="../../styles.css">|<link rel="stylesheet" href="../../assets/css/styles.css">|g' "$file"
        sed -i 's|<script src="../../script.js">|<script src="../../assets/js/main.js">|g' "$file"
        sed -i 's|<script src="../../scroll-animations.js">|<script src="../../assets/js/scroll-animations.js">|g' "$file"
        
        echo "  ✓ Updated $file"
    fi
done

# Update certificate images
sed -i 's|../../images/GuviCertification - 3y11477U9nT9198bO5.png|../../assets/images/certificates/guvi-certification.png|g' pages/certifications/outstanding-certificates.html

echo ""
echo "✅ All HTML file paths updated successfully!"
echo ""
echo "📊 Summary:"
echo "  ✓ CSS paths updated to: assets/css/styles.css"
echo "  ✓ JS paths updated to: assets/js/main.js"
echo "  ✓ Image paths updated to: assets/images/{category}/"
echo ""
echo "🎯 Next steps:"
echo "  1. Test all pages in browser"
echo "  2. Verify images load correctly"
echo "  3. Check navigation and links"
echo "  4. Delete old 'images/' folder after confirming"
echo ""
