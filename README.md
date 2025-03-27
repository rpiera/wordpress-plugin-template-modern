# Modern WordPress Plugin Template

This template is designed to help you build modern, clean and scalable WordPress plugins using best practices like:

- PSR-4 Autoloading with Composer
- Namespaces
- Modular structure (`admin/`, `public/`, `includes/`)
- Centralized hooks loader
- Internationalization-ready (`/languages`)
- PHPUnit support for testing
- Shell script to scaffold new plugin instances (`setup.sh`)

---

## 📦 Included Files

- `wordpress-plugin-template-modern.zip`: the core plugin skeleton ready to use.
- `setup.sh`: shell script to create a new plugin based on this template.

---

## 🛠 How to Use the `setup.sh` Script

1. Extract the `.tar.gz` package:

```bash
tar -xzvf wordpress-plugin-template-modern.tar.gz
```

2. Make the script executable:

```bash
chmod +x setup.sh
```

3. Run the script and follow the prompt:

```bash
./setup.sh
```

4. Enter your desired plugin slug, e.g.:

```
Enter the new plugin name (e.g., my-awesome-plugin):
```

This will create a new folder with the given name, rename and namespace all relevant files, and get your plugin ready to go.

---

## 🧪 Testing

To run unit tests:

```bash
composer install
./vendor/bin/phpunit
```

---

## 📁 Plugin Structure

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

## 🧩 Requirements

- PHP 7.4 or higher
- Composer
- WordPress 6.0+

---

## ✨ Author

This template was modernized by [Your Name] based on a traditional OOP plugin structure.

Use it as your solid foundation for professional WordPress plugin development!

---

## 🐳 Run WordPress with Docker (for development)

This template supports running WordPress in Docker with your plugin mounted automatically.

### Steps

1. Make sure you have Docker installed.
2. Run the setup script:

```bash
chmod +x setup-docker.sh
./setup-docker.sh
```

- WordPress runs at: http://localhost:8000
- phpMyAdmin: http://localhost:8080
- Your plugin is mounted in `/wp-content/plugins/wordpress-plugin-template-modern/`
