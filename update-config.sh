#!/usr/bin/env bash
ffprofile=$(ls ~/.mozilla/firefox/ | grep default-release)
# default-release = Firefox
# default-beta = Firefox Beta
# dev-edition-default = Firefox Developer Edition

echo 'Symlinking Firefox profile'
ln -rsfv ./firefox-user.js ~/.mozilla/firefox/$ffprofile/user.js
ln -rsfv ./chrome/ ~/.mozilla/firefox/$ffprofile/
#ln -rsfv ./search.json.mozlz4 ~/.mozilla/firefox/$ffprofile/

# Update adblock css rules
curl -s http://www.floppymoose.com/userContent.css > ./chrome/import/userContent/adblock.css && echo 'adblock.css updated'
