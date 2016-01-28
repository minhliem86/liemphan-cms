<?php
use services\frontend\RepoInterface as Model;

class SanphamController extends BaseController{
	protected $model;

	public function __construct(Model $model){
		$this->model=$model;
	}

	public function sanpham(){
		$danhmuc = $this->model->showdanhmuc(array('Sanpham'));
		return View::make('pages.sanpham')->with(compact('danhmuc'));
	}

	public function danhmuc($slug_danhmuc){
		$sanpham = $this->model->sanpham_danhmuc($slug_danhmuc);
		$danhmuc = $this->model->name_danhmuc($slug_danhmuc);
		return View::make('pages.sanphamDanhmuc')->with(compact('sanpham','danhmuc'));
	}

	public function sanphamDetail($slug_danhmuc,$slug_sp){
		$sanpham = $this->model->sanpham_detail($slug_danhmuc,$slug_sp);
		return View::make('pages.sanphamDetail')->with(compact('sanpham'));
	}
}