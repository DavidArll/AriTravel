This directory is intended to store the full exported configuration of the AriTravel profile.

To populate this directory:
1. Install Drupal using this profile: 'drush site:install aritravel -y'.
2. After installation, export the configuration: 'drush config:export -y --destination=profiles/custom/aritravel/config/sync' (adjust destination path as needed if running Drush from a different location).

This will ensure all settings applied during installation (from .install hooks, module defaults, etc.) are captured.
The profile should then be installable from this exported configuration.
