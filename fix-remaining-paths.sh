#!/bin/bash

# Enhanced path update script - catches all remaining references

echo "🔧 Fixing remaining image references..."

# ==========================================
# INDEX.HTML - Profile photo
# ==========================================
sed -i 's|src="images/WhatsApp Image 2025-10-11 at 9.48.19 AM.jpeg"|src="assets/images/profile/andrea-profile.jpg"|g' index.html

# ==========================================
# ABOUT.HTML - Additional images
# ==========================================
sed -i 's|src="images/speaker.jpg"|src="assets/images/achievements/speaker.jpg"|g' about.html
sed -i 's|src="images/WhatsApp Image 2025-10-18 at 1.19.34 AM.jpeg"|src="assets/images/achievements/achievement-1.jpg"|g' about.html
sed -i 's|src="images/WhatsApp Image 2025-10-11 at 9.48.19 AM.jpeg"|src="assets/images/profile/andrea-profile.jpg"|g' about.html

# ==========================================
# HOBBIES.HTML - Art gallery and timeline
# ==========================================
sed -i 's|src="images/WhatsApp Image 2025-10-11 at 9.48.19 AM.jpeg"|src="assets/images/profile/andrea-profile.jpg"|g' hobbies.html
sed -i 's|src="images/girl.jpg"|src="assets/images/achievements/team-1.jpg"|g' hobbies.html
sed -i 's|src="images/blind.jpg"|src="assets/images/achievements/blind.jpg"|g' hobbies.html
sed -i 's|src="images/rapp.jpg"|src="assets/images/achievements/rapp.jpg"|g' hobbies.html
sed -i 's|src="images/girll.jpg"|src="assets/images/achievements/team-2.jpg"|g' hobbies.html
sed -i 's|src="images/build.jpg"|src="assets/images/achievements/build-event.jpg"|g' hobbies.html
sed -i 's|src="images/WhatsApp Image 2025-10-18 at 11.41.38 PM.jpeg"|src="assets/images/achievements/achievement-2.jpg"|g' hobbies.html
sed -i 's|src="images/WhatsApp Image 2025-10-19 at 12.15.00 AM.jpeg"|src="assets/images/achievements/achievement-5.jpg"|g' hobbies.html

# ==========================================
# CERTIFICATIONS.HTML - Certificate images
# ==========================================
sed -i 's|src="images/chall.jpg"|src="assets/images/achievements/challenge.jpg"|g' certifications.html
sed -i 's|src="images/1744825576782.jpg"|src="assets/images/hobbies/hobby-1.jpg"|g' certifications.html
sed -i 's|src="images/1744966012525.jpg"|src="assets/images/hobbies/hobby-2.jpg"|g' certifications.html
sed -i 's|src="images/1744972176562.jpg"|src="assets/images/hobbies/hobby-3.jpg"|g' certifications.html
sed -i 's|src="images/1745243879045 (1).jpg"|src="assets/images/hobbies/hobby-4.jpg"|g' certifications.html
sed -i 's|src="images/1749205892678.jpg"|src="assets/images/hobbies/hobby-5.jpg"|g' certifications.html
sed -i 's|src="images/1751186865855.jpg"|src="assets/images/hobbies/hobby-6.jpg"|g' certifications.html

# ==========================================
# PROJECTS.HTML - Project thumbnails
# ==========================================
sed -i 's|src="images/Screenshot (420).png"|src="assets/images/projects/project-screenshot-1.png"|g' projects.html

# ==========================================
# Check for any remaining old references
# ==========================================
echo ""
echo "Checking for remaining old references..."
REMAINING=$(grep -r 'src="images/' --include="*.html" . 2>/dev/null | wc -l)

if [ "$REMAINING" -gt 0 ]; then
    echo "⚠️  Still found $REMAINING references:"
    grep -r 'src="images/' --include="*.html" . 2>/dev/null
    echo ""
else
    echo "✅ All image paths successfully updated!"
fi

echo ""
echo "📊 Verification:"
echo "Total assets/images references: $(grep -r 'assets/images/' --include="*.html" . 2>/dev/null | wc -l)"
echo ""
