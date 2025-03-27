# Contributing to WordPress Plugin Template Modern

Thanks for your interest in contributing to this project! This guide outlines the process for contributing and our development conventions.

---

## 📦 Project Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/rpiera/wordpress-plugin-template-modern.git
   cd wordpress-plugin-template-modern
   ```

2. Install dependencies:
   ```bash
   composer install
   ```

3. Run tests:
   ```bash
   ./vendor/bin/phpunit
   ```

---

## 🧑‍💻 Development Guidelines

- Use **PSR-12** and **WordPress coding standards**.
- All new code must use **namespaces** and **PSR-4 autoloading**.
- Keep logic modular — separate concerns across `includes/`, `admin/`, `public/`.
- Hooks (`add_action` / `add_filter`) should be registered via the `Loader` class.

---

## 🔀 Branch Strategy

- `main`: always stable and production-ready.
- `develop`: for ongoing development and PRs.
- Feature branches: `feature/<feature-name>`
- Bugfix branches: `fix/<bug-description>`

---

## 💬 Commit Conventions

Use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/):

- `feat:` for new features
- `fix:` for bug fixes
- `refactor:` for code restructuring
- `test:` for test-related updates
- `docs:` for documentation changes
- `chore:` for maintenance tasks

Example:
```bash
git commit -m "feat: add support for shortcode registration"
```

---

## 🧪 Tests

Add or update PHPUnit tests for any logic you add or change. Make sure `composer test` passes.

---

## 📦 Releases

Releases are handled via GitHub Actions:
- Use `./bump.sh <version>` to bump version and tag
- Push the tag: `git push origin vX.Y.Z`
- Workflows will create and publish a ZIP + release notes from `CHANGELOG.md`

---

## 📝 License

By contributing, you agree that your code will be licensed under the same license as the project.

Thanks for helping improve this plugin template! 🎉
