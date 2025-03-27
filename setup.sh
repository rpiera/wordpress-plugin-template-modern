#!/bin/bash
# Script para crear un nuevo plugin basado en wordpress-plugin-template-modern

echo "Introduce el nombre del nuevo plugin (ej: my-awesome-plugin):"
read PLUGIN_SLUG

# Validar que no esté vacío
if [ -z "$PLUGIN_SLUG" ]; then
  echo "Nombre no válido."
  exit 1
fi

PLUGIN_DIR="./$PLUGIN_SLUG"
NAMESPACE=$(echo "$PLUGIN_SLUG" | sed -r 's/(^|-)([a-z])/\U\2/g' | sed 's/-//g')
NAMESPACE_SHORT=$(echo "$PLUGIN_SLUG" | cut -c1-3 | tr '[:lower:]' '[:upper:]')

# Copiar archivos
cp -r ./wordpress-plugin-template-modern "$PLUGIN_DIR"

# Renombrar el archivo principal
mv "$PLUGIN_DIR/wordpress-plugin-template-modern.php" "$PLUGIN_DIR/$PLUGIN_SLUG.php"

# Reemplazar textos dentro de los archivos
find "$PLUGIN_DIR" -type f \( -name "*.php" -o -name "README.md" -o -name "composer.json" \) -exec sed -i "s/wordpress-plugin-template-modern/$PLUGIN_SLUG/g" {} +
find "$PLUGIN_DIR" -type f -name "*.php" -exec sed -i "s/WPTM/$NAMESPACE_SHORT/g" {} +
find "$PLUGIN_DIR/includes/Plugin.php" -exec sed -i "s/namespace WPTM;/namespace $NAMESPACE;/g" {} +

echo "Plugin '$PLUGIN_SLUG' creado en la carpeta $PLUGIN_DIR"
