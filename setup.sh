#!/bin/sh
# Setup script for teammates: activates git hooks

echo "Configuring git hooks path..."
git config core.hooksPath .githooks

echo "Making pre-commit executable..."
chmod +x .githooks/pre-commit 2>/dev/null || true

echo "Setup complete. Hooks path:"
git config --get core.hooksPath