<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });




Route::get('/test','web\CartController@test');



/*Admin routes start here....please dont touch anything here */

Route::get('/admin/dashboard',[
    'uses' => 'Admin\AdminController@Dashboard',
    'as' => 'admin.dashboard'
])->middleware('admin');

Route::get('admin/login',[
    'uses' => 'Admin\AdminController@loginForm',
    'as' => 'admin.login'
]);

Route::post('/admin/user/login',[
    'uses' => 'Admin\AdminController@Login',
    'as' => 'admin.user.login'
]);

Route::get('/admin/logout',[
    'uses' => 'Admin\AdminController@Logout',
    'as' => 'admin.logout'
]);

Route::get('/admin/orders','Admin\OrderController@index');

Route::get('/admin/order-details/{id}','Admin\OrderController@orderDetails');
