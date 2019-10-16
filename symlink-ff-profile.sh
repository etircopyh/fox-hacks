#!/bin/sh
ffprofile=$(ls ~/.mozilla/firefox/ | grep default-release)

ln -rsfv ./firefox-user.js ~/.mozilla/firefox/$ffprofile/user.js
ln -rsfv ./chrome/ ~/.mozilla/firefox/$ffprofile/
