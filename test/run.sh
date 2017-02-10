#!/bin/bash
webdriver-manager start &
Xvfb :99 -screen 0 1280x1024x16 2>&1 >/dev/null &
export DISPLAY=:99