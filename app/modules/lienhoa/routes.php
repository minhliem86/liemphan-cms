<?php
Route::group(array('prefix'=>'admin','before'=>'checkAdmin','namespace'=>'lienhoa\controllers'),function(){
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

	//
});