#!/bin/bash

echo "==================================="
echo "GitHub Push with Token"
echo "==================================="
echo ""
echo "First, create your Personal Access Token:"
echo "1. Go to: https://github.com/settings/tokens"
echo "2. Click 'Generate new token (classic)'"
echo "3. Check 'repo' scope"
echo "4. Copy the token (starts with ghp_)"
echo ""
read -p "Have you created the token? (y/n): " token_ready

if [ "$token_ready" != "y" ]; then
    echo "Please create the token first, then run this script again."
    exit 1
fi

echo ""
echo "Enter your GitHub credentials:"
read -p "Username (bicentennial): " username
username=${username:-bicentennial}

echo ""
echo "Paste your Personal Access Token (it won't be visible):"
read -s token

echo ""
echo "Pushing to GitHub..."
echo ""

# Push using token authentication
git push https://${username}:${token}@github.com/${username}/delawarebathrooms-public.git main

echo ""
echo "Done! Your code should now be on GitHub."
