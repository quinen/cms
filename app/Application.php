<?php

declare(strict_types=1);

namespace App;

use Quinen\Cms\Application as CmsApplication;

class Application extends CmsApplication
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