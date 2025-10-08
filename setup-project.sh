#!/bin/bash
set -e  # Exit on error

PROJECT_DIR="$1"
REPO_URL="$2"

if [ -z "$PROJECT_DIR" ] || [ -z "$REPO_URL" ]; then
    echo "Usage: $0 <project_directory> <github_repo_url>"
    exit 1
fi

cd "$PROJECT_DIR"

echo "[1/9] Initializing git..."
git init

echo "[2/9] Running uv sync..."
uv sync --dev

echo "[3/9] Setting up pyrefly..."
echo "y" | uv run pyrefly init

echo "[4/9] Installing pre-commit hooks..."
if [ -f ".pre-commit-config.yaml" ]; then
    uv run pre-commit install
    echo "✓ Pre-commit hooks installed"
else
    echo "⚠ No .pre-commit-config.yaml found, skipping"
fi

echo "[5/9] Adding all files..."
git add .

echo "[6/9] Running pre-commit checks..."
if [ -f ".pre-commit-config.yaml" ]; then
    while true; do
        set +e
        uv run pre-commit run --all-files
        PRECOMMIT_STATUS=$?
        set -e

        if [ "$PRECOMMIT_STATUS" -eq 0 ]; then
            echo "✓ Pre-commit checks passed"
            break
        elif [ "$PRECOMMIT_STATUS" -eq 1 ]; then
            echo "Pre-commit applied fixes; re-staging files..."
            git add .
        else
            echo "❌ Pre-commit failed with status $PRECOMMIT_STATUS"
            exit "$PRECOMMIT_STATUS"
        fi
    done
else
    echo "⚠ No .pre-commit-config.yaml found, skipping pre-commit run"
fi

echo "[7/9] Creating initial commit..."
git commit -m "Initial commit"

echo "[8/9] Adding remote origin..."
git remote add origin "$REPO_URL"

echo "[9/9] Pushing to GitHub..."
git branch -M main
git push -u origin main

echo "✅ Project setup complete!"
echo "Repository: $REPO_URL"
