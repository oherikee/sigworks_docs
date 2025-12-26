#!/bin/bash

echo "Mensagem do commit:"
read -r MSG

if [ -z "$MSG" ]; then
  echo "❌ Commit cancelado: mensagem vazia"
  exit 1
fi

git add .
git commit -m "$MSG" || exit 1
git push || exit 1

echo "🚀 Commit enviado. Deploy automático em andamento."
