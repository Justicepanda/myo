<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return $app->welcome();
});

$app->group(['prefix' => 'api','namespace' => 'App\Http\Controllers'], function($app)
{
    $app->get('login','LoginController@index');
  
    $app->get('login/{id}','LoginController@getLogin');
      
    $app->post('login','LoginController@createLogin');
      
    $app->put('login/{id}','LoginController@updateLogin');
      
    $app->delete('login/{id}','LoginController@deleteLogin');

    $app->post('loginauth','LoginController@authenticateLogin');
});