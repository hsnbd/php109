<?php

Route::get('/',"BaseController@index");
Route::get('/contact',"BaseController@contact");
Route::get('/womens',"BaseController@womens");


Route::get('/single',"BaseController@single");

Route::get('/{cname}/{scname}/{id}/{any}',"BaseController@singleView")->name('single.view');


Route::get('/mens',"BaseController@mens");
Route::get('/checkout',"BaseController@checkout");
Route::get('/electronics',"BaseController@electronics");



Route::get('/admin',"AdminController@admin");
Route::get('/admin/profile',"AdminController@profile");
Route::get('/admin/invoice',"AdminController@invoice");


Route::get('/product/create',"productsmanagement@index");
Route::post('/product/add',"productsmanagement@store");
Route::get('/product/view',"productsmanagement@productView");
Route::get('/product/edit/{id}',"productsmanagement@productEdit");
Route::post('/product/update/{id}',"productsmanagement@productUpdate");
Route::get('/product/delete/{id}',"productsmanagement@productDelete");

Route::get('/category/add',"categoriesmanagement@index");
Route::post('/category/create', "categoriesmanagement@store");
Route::get('/category/edit/{id}',"categoriesmanagement@edit");
Route::post('/category/update/{id}',"categoriesmanagement@update");
Route::get('/category/delete/{id}',"categoriesmanagement@delete");


Route::get('/sub-category/add',"subcategoriesmanagement@index");
Route::post('/subcategory/create',"subcategoriesmanagement@store");
Route::get('/subcategory/edit/{id}','subcategoriesmanagement@edit');
Route::get('/subcategory/update/{id}','subcategoriesmanagement@update');
Route::get('/subcategory/delete/{id}','subcategoriesmanagement@delete');
Route::get('/unit/add',"unitsmanagement@index");
Route::post('/unit/create',"unitsmanagement@store");
Route::get('/unit/edit/{id}',"unitsmanagement@edit");
Route::post('/unit/update/{id}',"unitsmanagement@update");
Route::get('/unit/delete/{id}',"unitsmanagement@delete");

Route::get('/size/add','sizeController@index');
Route::post('/size/create','sizeController@store');
Route::get('/size/edit/{id}','sizeController@edit');
Route::post('/size/update/{id}','sizeController@update');
Route::get('/size/delete/{id}','sizeController@delete');

Route::get('/country/add','CountryController@index');
Route::post('/country/create','CountryController@store');
Route::get('/country/edit/{id}','CountryController@edit');
Route::post('/country/update/{id}','CountryController@update');
Route::get('/country/delete/{id}','CountryController@delete');


Route::get('/city/add','CitiesController@index');
Route::post('/city/create','CitiesController@store');
Route::get('/city/edit/{id}','CitiesController@edit');
Route::post('/city/update/{id}','CitiesController@update');
Route::get('/city/delete/{id}','CitiesController@delete');


Route::get('/coupons/add','CouponController@index');
Route::get('/slider/add','SliderController@index');
Route::post('/slide/create','SliderController@store');
Route::get('/slider/edit/{id}','SliderController@edit');
Route::post('/slider/update/{id}','SliderController@update');
Route::get('/slider/delete/{id}','SliderController@delete');

Route::get('/users/add','UsersController@index');
Route::get('/user/register','UsersController@register');

Route::post('cart/add',"CartController@add")->name('cart.add');
Route::post('cart/remove',"CartController@remove")->name('cart.remove');
view('master');
