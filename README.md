# AriTravel - Drupal Headless CMS

This project is a decoupled (headless) CMS built with Drupal 10 using a hybrid architecture:

* A **custom headless frontend** for public-facing users.
* A **traditional Drupal admin UI** (Claro theme) for editors, admins, and content managers.

> Based on the official `drupal/recommended-project` Composer template.

---

## 📦 Tech Stack

* **Drupal 10.x (Composer-based)**
* **JSON\:API** for decoupled data access
* **Custom frontend theme** (headless)
* **Claro admin theme** for backend
* **Drush** CLI support
* **CORS enabled** for API consumption
* **Support for custom modules and themes**

---

## 🛠️ System Requirements

* PHP 8.1 or higher
* Composer 2.x
* MySQL / MariaDB / PostgreSQL
* Node.js (for frontend build or custom theming)
* Git

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

# Install Drupal (adjust DB credentials)
vendor/bin/drush site:install standard \
  --account-name=admin \
  --account-pass=admin \
  --db-url=mysql://user:pass@127.0.0.1/ari_cms \
  --site-name="AriTravel CMS"
```

---

## 🌐 JSON\:API Setup

Drupal exposes API resources automatically at:

```
GET /jsonapi
```

You can query it from any frontend (React, Vue, etc.) or tools like Postman.

---

## 🔐 CORS Configuration

CORS is enabled to allow access from the decoupled frontend.

Configured in:

```
web/sites/default/services.yml
```

Example:

```yaml
cors.config:
  enabled: true
  allowedOrigins: ['https://ari-frontend.netlify.app']
  allowedHeaders: ['Content-Type', 'Authorization']
  allowedMethods: ['GET', 'POST', 'PATCH', 'DELETE', 'OPTIONS']
  supportsCredentials: true
```

---

## 📁 Project Structure

```
├── composer.json
├── web/
│   ├── core/
│   ├── modules/
│   │   └── custom/           ← Custom modules
│   ├── themes/
│   │   └── custom/           ← Headless theme
│   ├── sites/
│   │   └── default/
│   │       ├── settings.php
│   │       └── services.yml
│   └── index.php
└── .gitignore
```

---

## 🧰 Useful Drush Commands

```bash
vendor/bin/drush cr         # Clear cache
vendor/bin/drush uli        # Login URL
vendor/bin/drush cim        # Import configuration
vendor/bin/drush sql-cli    # DB CLI access
```

---

## 🧪 Recommended Local Environment

Use [Lando](https://lando.dev) or [DDEV](https://ddev.com/) for consistent local development and CI-ready containers.

---

## 📄 License

This is a private, internal project. All rights reserved © AriTravel.
