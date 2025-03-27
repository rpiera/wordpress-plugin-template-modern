#!/bin/bash
# Bump de versión + commit + tag automático para el plugin

if [ -z "$1" ]; then
  echo "Uso: ./bump.sh <nueva-version>"
  echo "Ejemplo: ./bump.sh 1.0.1"
  exit 1
fi

VERSION=$1
TAG="v$VERSION"

# Actualizar CHANGELOG
if grep -q "\[Unreleased\]" CHANGELOG.md; then
  sed -i "" "s/## \[Unreleased\]/## [Unreleased]\n\n## [$VERSION] - $(date +%F)/" CHANGELOG.md
else
  echo "No se encontró sección [Unreleased] en CHANGELOG.md"
  exit 1
fi

# Commit + tag
git add CHANGELOG.md
git commit -m "🔖 Release $TAG"
git tag $TAG

echo "Versión $VERSION preparada. Usa 'git push && git push origin $TAG' para publicar."
