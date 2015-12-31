<?php 
namespace services\news;

use News;
use services\AbstractEloquent;

class Eloquent extends AbstractEloquent implements RepoInterface{
	protected $model;

	public function __construct(News $model){
		$this->model = $model;
	}

	public function relate_news_rand($take,$offset){
		return $this->model->take($take)->offset($offset)->get();
	}
}