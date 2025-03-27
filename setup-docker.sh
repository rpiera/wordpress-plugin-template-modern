#!/bin/bash
echo "🚀 Iniciando entorno WordPress + Plugin Template en Docker..."

# Crear carpeta wordpress si no existe
mkdir -p wordpress

# Levantar los contenedores
docker compose up -d

echo ""
echo "✅ WordPress está corriendo en: http://localhost:8000"
echo "✅ phpMyAdmin disponible en: http://localhost:8080"
echo ""
echo "📂 El plugin está montado en /wp-content/plugins/wordpress-plugin-template-modern/"
echo "🔑 Acceso WP por defecto: admin / admin (deberás configurar esto en la instalación inicial)"
