<?php 
namespace lienhoa\services\sanpham;

use lienhoa\models\Sanpham;
use services\AbstractEloquent;

class Eloquent extends AbstractEloquent implements RepoInterface{
	protected $model;

	public function __construct(Sanpham $sanpham){
		$this->model = $sanpham;
	}
}