<?php
namespace lienhoa\models;

class Sanpham extends \Eloquent{
	public $table = 'sanpham';

	protected $fillable = ['name','mota','image_path','image_name','status','order','chatlieu','mausac','size','style','noibat','solanxem','slug'];

	public function danhmuc(){
		return $this->belongsTo('Danhmuc','danhmuc_id');
	}
}