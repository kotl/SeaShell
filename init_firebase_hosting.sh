#!/bin/bash
# Copyright 2021 Google LLC
#
# A simple script to initialize and make first deployment 
# of Firebase Hosting through use of Googl Cloude Shell

# Install required tooling
npm install -g firebase-tools

# Create directory for the Cloud/Firebase project
mkdir ~/"$GOOGLE_CLOUD_PROJECT"
cd ~/"$GOOGLE_CLOUD_PROJECT"

# Generate default project configuration
cat > .firebaserc << EOF
{
  "projects": {
    "default": "$GOOGLE_CLOUD_PROJECT"
  }
}
EOF

# Authorize OAuth token through token copy paste from the browser
firebase login --no-localhost

# Interactive walkthrough to setup hosting
firebase init hosting

# Finally, make first deployment
firebase deploy
