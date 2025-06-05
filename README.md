# AriTravel - Drupal Headless CMS

This project is a decoupled (headless) CMS built with Drupal 10 using a hybrid architecture:
- A **custom headless frontend** for public-facing users.
- A **traditional Drupal admin UI** (Claro theme) for editors, admins, and content managers.

> Based on the official `drupal/recommended-project` Composer template.

---

## 📦 Tech Stack

- **Drupal 10.x (Composer-based)**
- **JSON:API** for decoupled data access
- **Custom frontend theme** (headless)
- **Claro admin theme** for backend
- **Drush** CLI support
- **CORS enabled** for API consumption
- **Support for custom modules and themes**

---

## 🛠️ System Requirements

- PHP 8.1 or higher
- Composer 2.x
- MySQL / MariaDB / PostgreSQL
- Node.js (for frontend build or custom theming)
- Git

---

## 🚀 Quick Installation

```bash
git clone https://github.com/<your-username>/AriTravel.git
cd AriTravel
composer install

# Create and configure settings.php
cp web/sites/default/default.settings.php web/sites/default/settings.php
mkdir -p web/sites/default/files
chmod -R 777 web/sites/default/files
