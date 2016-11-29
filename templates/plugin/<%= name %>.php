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

/**
 * Directory
 */
$root = plugin_dir_url(__FILE__);
$path = plugin_dir_path(__FILE__);


/**
 * Autoload
 */
require __DIR__ . '/vendor/autoload.php';
foreach (glob("$path/source/*.php") as $file) {
    require_once $file;
}

/**
 * View
 */
use Utils\View;
$view   = new View($root);


/**
 * Run on init
 */
 add_action('init', function () {

 });

 add_action('admin_init', function () {

 });

/**
 * Translations
 */
add_action('plugins_loaded', function () {
    load_plugin_textdomain('<%= name %>', false, dirname(plugin_basename(__FILE__)));
});
