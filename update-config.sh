#!/bin/sh
ffprofile=$(ls ~/.mozilla/firefox/ | grep default-release)

ln -rsfv ./firefox-user.js ~/.mozilla/firefox/$ffprofile/user.js
ln -rsfv ./chrome/ ~/.mozilla/firefox/$ffprofile/
ln -rsfv ./search.json.mozlz4 ~/.mozilla/firefox/$ffprofile/

# Update adblock css rules
curl -s http://www.floppymoose.com/userContent.css > ./chrome/css/adblock.css
