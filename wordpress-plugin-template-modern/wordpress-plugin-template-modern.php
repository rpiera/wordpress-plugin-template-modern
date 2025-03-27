<?php
/**
 * Plugin Name: WordPress Plugin Template Modern
 * Description: Plantilla modernizada para plugins de WordPress con PSR-4 y estructura modular.
 * Version: 1.0.0
 * Author: Tu Nombre
 * Text Domain: wptm
 */

defined( 'ABSPATH' ) || exit;

require_once __DIR__ . '/vendor/autoload.php';

use WPTM\Plugin;

function run_plugin_template_modern() {
    Plugin::get_instance()->run();
}
run_plugin_template_modern();
