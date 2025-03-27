# Plantilla Moderna para Plugins de WordPress

Esta plantilla está diseñada para facilitar la creación de plugins modernos en WordPress utilizando buenas prácticas como:

- Autoload PSR-4 con Composer
- Namespaces
- Estructura modular (`admin/`, `public/`, `includes/`)
- Sistema centralizado de hooks (`Loader`)
- Preparación para internacionalización (`/languages`)
- Soporte para testing con PHPUnit
- Script para clonar esta base con nuevo nombre (`setup.sh`)

---

## 📦 Archivos incluidos

- `wordpress-plugin-template-modern.zip`: contiene el esqueleto del plugin listo para usar.
- `setup.sh`: script de shell para generar un nuevo plugin basado en esta plantilla.

---

## 🛠 Cómo usar el script `setup.sh`

1. Extrae el contenido del archivo `.tar.gz`:

```bash
tar -xzvf wordpress-plugin-template-modern.tar.gz
```

2. Dale permisos al script:

```bash
chmod +x setup.sh
```

3. Ejecuta el script y sigue las instrucciones:

```bash
./setup.sh
```

4. El script te pedirá un nombre (slug) para tu nuevo plugin. Ejemplo:

```
Introduce el nombre del nuevo plugin (ej: mi-plugin-avanzado):
```

Esto generará una nueva carpeta con ese nombre, reemplazará los namespaces y slugs internos, y te dejará el plugin listo para comenzar.

---

## 🧪 Testing

Para ejecutar las pruebas unitarias:

```bash
composer install
./vendor/bin/phpunit
```

---

## 📁 Estructura del plugin

```
includes/
  Plugin.php
  Loader.php
admin/
  Admin_Page.php
public/
  Frontend_Hooks.php
tests/
  PluginTest.php
```

---

## 🧩 Requisitos

- PHP 7.4 o superior
- Composer
- WordPress 6.0+

---

## ✨ Autor

Este template ha sido modernizado por [Tu Nombre] a partir de una base OOP tradicional.

¡Personalízalo y úsalo como punto de partida para tus plugins profesionales!
