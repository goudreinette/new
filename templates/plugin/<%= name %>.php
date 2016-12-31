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
 * Autoload
 */
require __DIR__ . '/vendor/autoload.php';


class <%= pascal %> extends PluginContext
{
    static $base = "<%= name %>"
}

new <%= pascal %>();
