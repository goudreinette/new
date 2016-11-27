<?php namespace <%= pascal %>;

/*
Plugin Name: <%= pascal %>
Plugin URI: https://github.com/reinvdwoerd/<%= name %>
Description:
Version: 1.0
Author: reinvdwoerd
Author URI: reinvdwoerd.herokuapp.com
License: -
Text Domain: <%= name %>
*/

require __DIR__ . '/vendor/autoload.php';

use Utils\View;

/**
 * Dependencies
 */
$root   = plugin_dir_url(__FILE__);
$view   = new View($root);

/**
 * Initialize
 */

/**
 * Translations
 */
add_action('plugins_loaded', function () {
    load_plugin_textdomain('<%= name %>', false, dirname(plugin_basename(__FILE__)));
});
