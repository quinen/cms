<?php


namespace Quinen\Cms;


class FrontController
{
    public Router $router;
    public Dispatcher $dispatcher;

    public function __construct(
        Router $router,
        Dispatcher $dispatcher
    )
    {
        $this->dispatcher = $dispatcher;
        $this->router = $router;
    }

    public function run(RequestInterface $request,ResponseInterface $response)
    {

    }
}