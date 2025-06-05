<?php

/**
 * @file
 * Enables modules and site configuration for running the site.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function aritravel_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  // You can preset form values here if needed, or hide certain options.
  // For a fully automated install, most settings will be done in .install or via config.
}
