<?php

declare(strict_types=1);

namespace App;

class Application extends \Quinen\Cms\Application
{
    private $config;
    public function __construct($config)
    {
        $this->setConfig($config);
    }


    private function setConfig($config)
    {

    }
}