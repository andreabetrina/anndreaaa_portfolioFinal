#!/bin/bash

# Portfolio Organization - Cleanup & Verification Script

echo "🔍 Running final verification and cleanup..."
echo ""

# ==========================================
# VERIFY ORGANIZATION
# ==========================================

echo "📊 Organization Statistics:"
echo ""
echo "Total organized images: $(find assets/images -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) | wc -l)"
echo ""
echo "Breakdown by category:"
echo "  Profile:       $(find assets/images/profile -type f 2>/dev/null | wc -l)"
echo "  About:         $(find assets/images/about -type f 2>/dev/null | wc -l)"
echo "  Projects:      $(find assets/images/projects -type f 2>/dev/null | wc -l)"
echo "  Hobbies:       $(find assets/images/hobbies -type f 2>/dev/null | wc -l)"
echo "  Achievements:  $(find assets/images/achievements -type f 2>/dev/null | wc -l)"
echo "  Certificates:  $(find assets/images/certificates -type f 2>/dev/null | wc -l)"
echo ""

# ==========================================
# CHECK FOR MISSING REFERENCES
# ==========================================

echo "🔎 Checking for old image references in HTML..."
echo ""

# Check if any HTML files still reference the old images/ folder
OLD_REFS=$(grep -r 'images/' --include="*.html" . 2>/dev/null | grep -v "assets/images" | grep -v "organize-files.sh" | grep -v "update-paths.sh" | wc -l)

if [ "$OLD_REFS" -gt 0 ]; then
    echo "⚠️  Warning: Found $OLD_REFS old image references"
    echo "Run: grep -r 'images/' --include=\"*.html\" . | grep -v 'assets/images'"
    echo ""
else
    echo "✅ All HTML files updated to use assets/images/"
    echo ""
fi

# ==========================================
# FOLDER STRUCTURE SUMMARY
# ==========================================

echo "📁 Final Project Structure:"
echo ""
tree -L 2 -d assets/ 2>/dev/null || (
    echo "assets/"
    find assets -type d | sed 's|[^/]*/| |g'
)
echo ""

# ==========================================
# CLEANUP OPTIONS
# ==========================================

echo "🧹 Cleanup Options:"
echo ""
echo "After verifying everything works correctly, you can:"
echo ""
echo "1. Delete old images folder:"
echo "   rm -rf images/"
echo ""
echo "2. Delete old CSS/JS files from root:"
echo "   rm styles.css script.js scroll-animations.js"
echo ""
echo "3. Keep organization scripts for reference:"
echo "   Keep: organize-files.sh, update-paths.sh"
echo ""
echo "⚠️  IMPORTANT: Test your site thoroughly before deletion!"
echo ""

# ==========================================
# QUICK TESTS
# ==========================================

echo "🧪 Quick Tests:"
echo ""

# Test if main files exist
echo "Checking critical files..."
[ -f "index.html" ] && echo "  ✓ index.html" || echo "  ✗ index.html MISSING"
[ -f "assets/css/styles.css" ] && echo "  ✓ assets/css/styles.css" || echo "  ✗ styles.css MISSING"
[ -f "assets/js/main.js" ] && echo "  ✓ assets/js/main.js" || echo "  ✗ main.js MISSING"
[ -f "assets/images/profile/andrea-profile.jpg" ] && echo "  ✓ Profile image" || echo "  ✗ Profile image MISSING"

echo ""

# Check file sizes
echo "File sizes:"
echo "  styles.css:  $(du -h assets/css/styles.css 2>/dev/null | cut -f1)"
echo "  main.js:     $(du -h assets/js/main.js 2>/dev/null | cut -f1)"

echo ""

# ==========================================
# BACKUP RECOMMENDATION
# ==========================================

echo "💾 Backup Recommendation:"
echo ""
echo "Before deleting old files, create a backup:"
echo "  tar -czf backup-$(date +%Y%m%d).tar.gz images/ styles.css script.js scroll-animations.js"
echo ""

# ==========================================
# TESTING CHECKLIST
# ==========================================

echo "✅ Testing Checklist:"
echo ""
echo "Test these pages in your browser:"
echo "  [ ] index.html - Theme toggle, navigation"
echo "  [ ] about.html - Personality images load"
echo "  [ ] projects.html - Project cards with thumbnails"
echo "  [ ] hobbies.html - Timeline images, back-to-top"
echo "  [ ] achievements.html - Achievement gallery"
echo "  [ ] certifications.html - Certificate images"
echo "  [ ] skills.html - Progress bars animate"
echo "  [ ] contact.html - Footer styling correct"
echo "  [ ] Individual project pages - Images load"
echo "  [ ] Test in light AND dark mode"
echo "  [ ] Test on mobile (responsive design)"
echo ""

echo "🎉 Organization complete! Ready for testing."
echo ""
