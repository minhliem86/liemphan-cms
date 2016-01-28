<?php
use services\frontend\RepoInterface as Model;

class TintucController extends BaseController{
	protected $model;

	public function __construct(Model $model){
		$this->model = $model;
	}

	public function tintuc(){
		$tintuc = $this->model->tintuc(5);
		return View::make('pages.tintuc')->with(compact('tintuc'));
	}

	public function tintuc_detail($slug_tintuc){
		$tintuc = $this->model->tintuc_detail($slug_tintuc);
		$relate = $this->model->tintuc_relate(5,$slug_tintuc);
		return View::make('pages.tintuc_detail')->with(compact('tintuc','relate'));
	}
}