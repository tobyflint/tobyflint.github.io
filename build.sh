#!/bin/sh

# Global packages:
# mustache@2.2.1
# clean-css@3.4.13
# html-minifier@1.1.1

mustache \
  -p templates/css/partials/navbar.mustache \
  -p templates/css/partials/footer.mustache \
  templates/data/nodata.json templates/css/navbarfooter.mustache \
  > css/navbarfooter.css

cleancss -o css/navbarfooter.css css/navbarfooter.css

mustache \
  -p templates/css/partials/global.mustache \
  -p templates/css/partials/navbar.mustache \
  -p templates/css/partials/footer.mustache \
  templates/data/nodata.json templates/css/style.mustache \
  > css/style.css

cleancss -o css/style.css css/style.css

mustache \
  -p templates/html/partials/navbar.mustache \
  -p templates/html/partials/footer.mustache \
  -p templates/html/partials/index/content.mustache \
  templates/data/index.json templates/html/page.mustache \
  > index.html

html-minifier -o index.html index.html --remove-comments --collapse-whitespace

mustache \
  -p templates/html/partials/navbar.mustache \
  -p templates/html/partials/footer.mustache \
  -p templates/html/partials/tinyarmies/content.mustache \
  templates/data/tinyarmies.json templates/html/page.mustache \
  > tinyarmies.html

html-minifier -o tinyarmies.html tinyarmies.html --remove-comments --collapse-whitespace

mustache \
  -p templates/html/partials/navbar.mustache \
  -p templates/html/partials/footer.mustache \
  -p templates/html/partials/games/content.mustache \
  templates/data/games.json templates/html/page.mustache \
  > games.html

html-minifier -o games.html games.html --remove-comments --collapse-whitespace

mustache \
  -p templates/html/partials/navbar.mustache \
  -p templates/html/partials/footer.mustache \
  -p templates/html/partials/about/content.mustache \
  templates/data/about.json templates/html/page.mustache \
  > about.html

html-minifier -o about.html about.html --remove-comments --collapse-whitespace

mustache \
  -p templates/html/partials/navbar.mustache \
  -p templates/html/partials/footer.mustache \
  -p templates/html/partials/privacypolicy/content.mustache \
  templates/data/privacypolicy.json templates/html/page.mustache \
  > privacypolicy.html

html-minifier -o privacypolicy.html privacypolicy.html --remove-comments --collapse-whitespace
