# brew install imagemagick
# brew install --cask font-jetbrains-mono
magick -size 2048x734 \
  -define gradient:angle=330 \gradient:#0d0551-#30e9ff \
  -gravity center \
  -pointsize 100 \
  -font 'Cascadia-Code-SemiBold' \
  -fill white \
  -annotate +0-80 'r-windows-paths' \
  -pointsize 40 \
  -font 'Cascadia-Code-SemiBold' \
  -annotate +0+60 'R · Rtools · TinyTeX · MiKTeX' \
  -annotate +0+130 'Pandoc · Quarto · Git' \
  png:- | pngquant - --force --output images/banner.png
