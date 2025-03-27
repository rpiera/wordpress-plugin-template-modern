<?php
namespace WPTM;

use WPTM\Includes\Loader;

final class Plugin {
    private static $instance;
    public $loader;

    private function __construct() {
        $this->loader = new Loader();
    }

    public static function get_instance(): self {
        if ( null === self::$instance ) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    public function run() {
        $this->loader->run();
    }
}
