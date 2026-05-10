#!/usr/bin/env bash
# Script de despliegue inicial para Dashboard Origami → GitHub Pages
# Uso: ./deploy.sh <github_user> [repo_name]

set -e

USER="${1:?Falta usuario de GitHub. Uso: ./deploy.sh <github_user> [repo_name]}"
REPO="${2:-dashboard-origami}"

echo ">> Inicializando repo para $USER/$REPO"

git init -q
git add .
git commit -q -m "init: dashboard origami"
git branch -M main
git remote add origin "https://github.com/$USER/$REPO.git" 2>/dev/null || git remote set-url origin "https://github.com/$USER/$REPO.git"

echo ">> Push a origin main..."
git push -u origin main

echo ""
echo "✅ Push completado."
echo ""
echo "Siguiente paso (manual en GitHub):"
echo "  Settings → Pages → Source: Deploy from a branch"
echo "  Branch: main  |  Folder: /docs  |  Save"
echo ""
echo "URL final: https://$USER.github.io/$REPO/"
