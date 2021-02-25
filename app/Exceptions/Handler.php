<?php

namespace App\Exceptions;
// use Exception;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        // 'Symfony\Component\HttpKernel\Exception\HttpException'

    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    //  public function report(Exception $e)
    // {
    //     return parent::report($e);
    // }

    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    // public function render($request, Exception $e)
    // {
    //     if ($this->isHttpException($exception)) {
    //         if ($exception->getStatusCode() == 404) {
    //             return response()->view('main.error.404', [], 404);
    //         }
    //     }
    //     if ($exception->getStatusCode() == 500) {
    //         return response()->view('main.error.500', [], 500);
    //     }
     
    //     return parent::render($request, $exception);
    // }

    public function register()
    {
        //
    }
}
