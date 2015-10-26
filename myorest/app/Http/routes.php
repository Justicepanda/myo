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


    //Session
    $app->get('session','SessionController@index');
  
    $app->get('session/{id}','SessionController@getSession');
      
    $app->post('session','SessionController@createSession');
      
    $app->put('session/{id}','SessionController@updateSession');
      
    $app->delete('session/{id}','SessionController@deleteSession');

    $app->get('sessionsbyloginid/{id}','SessionController@getSessionsByLoginID');


    //RotationDataPoint
    $app->get('rotationdatapoint','RotationDatapointController@index');
  
    $app->get('rotationdatapoint/{id}','RotationDatapointController@getRotationDatapoint');
      
    $app->post('rotationdatapoint','RotationDatapointController@createRotationDatapoint');
      
    $app->put('rotationdatapoint/{id}','RotationDatapointController@updateRotationDatapoint');
      
    $app->delete('rotationdatapoint/{id}','RotationDatapointController@deleteRotationDatapoint');


    //AccelerationDataPoint
    $app->get('accelerationdatapoint','AccelerationDatapointController@index');
  
    $app->get('accelerationdatapoint/{id}','AccelerationDatapointController@getAccelerationDatapoint');
      
    $app->post('accelerationdatapoint','AccelerationDatapointController@createAccelerationDatapoint');
      
    $app->put('accelerationdatapoint/{id}','AccelerationDatapointController@updateAccelerationDatapoint');
      
    $app->delete('accelerationdatapoint/{id}','AccelerationDatapointController@deleteAccelerationDatapoint');


    //EmgDataPoint
    $app->get('emgdatapoint','EmgDatapointController@index');
  
    $app->get('emgdatapoint/{id}','EmgDatapointController@getEmgDatapoint');
      
    $app->post('emgdatapoint','EmgDatapointController@createEmgDatapoint');
      
    $app->put('emgdatapoint/{id}','EmgDatapointController@updateEmgDatapoint');
      
    $app->delete('emgdatapoint/{id}','EmgDatapointController@deleteEmgDatapoint');


    //EmgDataPoint
    $app->get('dashboardapplet','DashboardAppletController@index');
  
    $app->get('dashboardapplet/{id}','DashboardAppletController@getDashboardApplet');
      
    $app->post('dashboardapplet','DashboardAppletController@createDashboardApplet');
      
    $app->put('dashboardapplet/{id}','DashboardAppletController@updateDashboardApplet');
      
    $app->delete('dashboardapplet/{id}','DashboardAppletController@deleteDashboardApplet');

    $app->get('dashboardappletbyloginid/{id}','DashboardAppletController@getDashboardAppletByLoginId');
});