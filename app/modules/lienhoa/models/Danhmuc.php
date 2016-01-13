<?php
namespace lienhoa\models;

class Danhmuc extends \Eloquent{
	public $table = 'danhmuc';

	protected $fillable = ['title','mota','image_path','image_name','status','order','slug'];

	public function sanpham(){
		return $this->hasMany('Sanpham','danhmuc_id');
	}
}