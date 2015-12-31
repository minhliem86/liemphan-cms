<?php 
namespace services\countries;

use Countries;
use services\AbstractEloquent;

class Eloquent extends AbstractEloquent implements RepoInterface{
	protected $model;

	public function __construct(Countries $model){
		$this->model = $model;
	}
}