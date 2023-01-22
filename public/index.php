<?php

declare(strict_types=1);

require_once dirname(__DIR__) . '/vendor/autoload.php';

use Quinen\Cms\Http\Request;

echo '<pre><code>' . var_export([
        Request::getAsString('toto'),
        Request::getAsInt('toto'),
        Request::getAsInt('titi'),
        $_SERVER
    ], true) . '</code></pre>';