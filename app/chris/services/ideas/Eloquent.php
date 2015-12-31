<?php 
namespace services\ideas;

use Ideas;
use services\AbstractEloquent;

class Eloquent extends AbstractEloquent implements RepoInterface{
	protected $model;

	public function __construct(Ideas $model){
		$this->model = $model;
	}

	public function relate_news_rand($take,$offset){
		return $this->model->take($take)->offset($offset)->get();
	}
}