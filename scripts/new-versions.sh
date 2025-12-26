#!/bin/bash

BASE_DIR="docs/versions"

echo "Qual o nome da versão? (ex: v1.6, v16, v1.16)"
read -r VERSION

if [ -z "$VERSION" ]; then
  echo "❌ Versão não informada. Abortando."
  exit 1
fi

VERSION_DIR="$BASE_DIR/$VERSION"

if [ -d "$VERSION_DIR" ]; then
  echo "❌ A versão '$VERSION' já existe."
  exit 1
fi

# Cria a pasta
mkdir -p "$VERSION_DIR"

# Cria index.md
cat <<EOF > "$VERSION_DIR/index.md"
# Versão ${VERSION#v}

Resumo geral da versão ${VERSION}.

## Destaques
- 
- 
- 
EOF

# Cria changelog.md
cat <<EOF > "$VERSION_DIR/changelog.md"
# Changelog – ${VERSION}

## Adicionado
- 

## Alterado
- 

## Corrigido
- 
EOF

echo "✅ Versão '$VERSION' criada com sucesso!"
echo "📁 Pasta: $VERSION_DIR"
