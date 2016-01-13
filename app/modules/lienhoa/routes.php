<?php
Route::group(array('prefix'=>'admin','before'=>'checkAdmin','namespace'=>'lienhoa\controllers'),function(){
	// GIOITHIEU
	Route::any('gioithieu',array('as'=>'admin.gioithieu.index','uses'=>'GioithieuController@index'));

	// TINTUC
	Route::post('tintuc/status',array('as'=>'admin.tintuc.status', 'uses'=>'NewsController@status'));
	Route::get('tintuc/delete/{id}',array ('as'=>'admin.tintuc.delete', 'uses'=>'NewsController@delete'))->where('id','[0-9]+');
	Route::post('tintuc/deleteAll',array ('as'=>'admin.tintuc.deleteAll', 'uses'=>'NewsController@deleteAll'));
	Route::resource('tintuc','NewsController');

	// DANHMUC
	Route::post('danhmuc/status',array('as'=>'admin.danhmuc.status', 'uses'=>'DanhmucController@status'));
	Route::get('danhmuc/delete/{id}',array ('as'=>'admin.danhmuc.delete', 'uses'=>'DanhmucController@delete'))->where('id','[0-9]+');
	Route::post('danhmuc/deleteAll',array ('as'=>'admin.danhmuc.deleteAll', 'uses'=>'DanhmucController@deleteAll'));
	Route::resource('danhmuc','DanhmucController');

	//SANPHAM
	Route::get('sanpham/{danhmuc_id}',array('as'=>'admin.sanpham.index','uses'=>'SanphamController@index'))->where(['danhmuc_id'=>'[0-9]+']);
	Route::get('sanpham/create/{danhmuc_id}',array('as'=>'admin.sanpham.create','uses'=>'SanphamController@create'))->where(['danhmuc_id'=>'[0-9]+']);
	Route::post('sanpham/store/{danhmuc_id}',array('as'=>'admin.sanpham.store','uses'=>'SanphamController@store'))->where(['danhmuc_id'=>'[0-9]+']);
	Route::get('sanpham/edit/{danhmuc_id}/{sp_id}',array('as'=>'admin.sanpham.edit','uses'=>'SanphamController@edit'))->where(['danhmuc_id'=>'[0-9]+','sp_id'=>'[0-9]+']);
	Route::post('sanpham/edit/{sp_id}',array('as'=>'admin.sanpham.update','uses'=>'SanphamController@updatesanpham'))->where(['sp_id'=>'[0-9]+']);

	Route::post('sanpham/status',array('as'=>'admin.sanpham.status', 'uses'=>'SanphamController@status'));
	Route::get('sanpham/delete/{id}',array ('as'=>'admin.sanpham.delete', 'uses'=>'SanphamController@delete'))->where('id','[0-9]+');
	Route::post('sanpham/deleteAll',array ('as'=>'admin.sanpham.deleteAll', 'uses'=>'SanphamController@deleteAll'));

	// CUSTOMER
	Route::get('customer/delete/{id}',array ('as'=>'admin.customer.delete', 'uses'=>'CustomerController@delete'))->where('id','[0-9]+');
	Route::post('customer/deleteAll',array ('as'=>'admin.customer.deleteAll', 'uses'=>'CustomerController@deleteAll'));
	Route::resource('customer','CustomerController');
});
View::composer('admin::layouts.sidebar',function($view){
	$danhmuc = lienhoa\models\Danhmuc::where('status',1)->orderBy('order','ASC')->get();
	$view->with(compact('danhmuc'));
});