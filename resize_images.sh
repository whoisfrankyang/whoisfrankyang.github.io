#!/bin/bash
# Script to resize publication images to 200px width (height scales proportionally)

# Create thumbnails directory if it doesn't exist
mkdir -p thumbnails

# Resize images (adjust filenames as needed)
if [ -f "hri2026.png" ]; then
  sips -Z 200 hri2026.png --out thumbnails/hri2026.png
  echo "Resized hri2026.png"
fi

if [ -f "hri_lbr_2026.png" ]; then
  sips -Z 200 hri_lbr_2026.png --out thumbnails/hri_lbr_2026.png
  echo "Resized hri_lbr_2026.png"
fi

if [ -f "poster_2025.png" ]; then
  sips -Z 200 poster_2025.png --out thumbnails/poster_2025.png
  echo "Resized poster_2025.png"
fi

if [ -f "jnn_2023.png" ]; then
  sips -Z 200 jnn_2023.png --out thumbnails/jnn_2023.png
  echo "Resized jnn_2023.png"
fi

if [ -f "arxiv_2022.png" ]; then
  sips -Z 200 arxiv_2022.png --out thumbnails/arxiv_2022.png
  echo "Resized arxiv_2022.png"
fi

echo "Done! Resized images are in the thumbnails/ folder"

