#!/usr/bin/env bash
set -e

# Start Xvfb

#DEBUG=* xvfb-run --server-args="-screen :0 1024x768x24"  node --harmony ./render_profile_page.js https://www.linkedin.com/in/ajanta-manoj-a62a603/ ./profile.html

Xvfb -ac -screen scrn 1280x2000x24 :99.0 &
export DISPLAY=:99.0

exec "$@"
