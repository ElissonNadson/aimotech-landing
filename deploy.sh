#!/usr/bin/env bash
set -e

echo "🚀 Compilando Aimotech Landing com Astro..."
npm run build

echo "📤 Enviando alterações para o GitHub..."
git add -A
git commit -m "chore: deploy update $(date +'%Y-%m-%d %H:%M')" || true
git push origin main

echo "🌐 Atualizando Hostinger via SSH..."
ssh -p 65002 -i ~/.ssh/id_ed25519 -o StrictHostKeyChecking=no u865242426@147.93.39.188 "cd domains/aimotech.com.br/public_html && git fetch origin main && git reset --hard origin/main"

echo "✅ Deploy concluído com sucesso em https://aimotech.com.br!"
