<?php
namespace lienhoa\controllers;

use lienhoa\services\sanpham\RepoInterface as Sanpham;
use lienhoa\services\danhmuc\RepoInterface as Danhmuc;

class SanphamController extends \BaseController {
	protected $sanpham;
	protected $danhmuc;
	protected $name_project = '/liemphan-cms';

	public function __construct(Sanpham $sanpham, Danhmuc $danhmuc){
		$this->sanpham = $sanpham;
		$this->danhmuc = $danhmuc;
	}
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index($danhmuc_id)
	{
		$sanpham = $this->sanpham->whereGet('danhmuc_id',$danhmuc_id);
		$danhmuc = $this->danhmuc->find($danhmuc_id);
		return \View::make('lienhoa::pages.sanpham.index')->with(compact('sanpham','danhmuc_id','danhmuc'));
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create($danhmuc_id)
	{
		$danhmuc = $this->danhmuc->find($danhmuc_id);
		return \View::make('lienhoa::pages.sanpham.create')->with(compact('danhmuc_id','danhmuc'));
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store($danhmuc_id)
	{
		if(!\Input::has('file')){
			$img_path = '/public/backend/img/image_thumbnail.gif';
			$img_name = \GetNameImage::make("/",$img_path);
		}else{
			$img = \Input::get('file');
			$img_path = str_replace($this->name_project,'',$img);
			$img_name = \GetNameImage::make("/",$img_path);
		}

		$order = $this->sanpham->OrderFirst('id','DESC');
		count($order) == 0 ?  $current = 1 :  $current = $order->order +1 ;

		$data = array(
			'name'=> \Input::get('name'),
			'slug'=> \Unicode::make(\Input::get('name')),
			'chatlieu' => \Input::get('chatlieu'),
			'mausac' => \Input::get('mausac'),
			'size' => \Input::get('size'),
			'style' => \Input::get('style'),
			'mota' => \Input::get('mota'),
			'image_path' => $img_path,
			'image_name' => $img_name,
			'status' => \Input::get('status'),
			'order'=> $current,
			'danhmuc_id'=> $danhmuc_id,
		);
		$this->sanpham->create($data);
		\Notification::success('CREATED !');
		return \Redirect::route('admin.sanpham.index',$danhmuc_id);
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($danhmuc_id,$sp_id)
	{
		$danhmuc = $this->danhmuc->find($danhmuc_id);
		$sanpham = $this->sanpham->find($sp_id);
		return \View::make('lienhoa::pages.sanpham.view')->with(compact('danhmuc','sanpham'));
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function updatesanpham($sp_id)
	{
		if(!\Input::has('file')){
			$img_path = \Input::get('img-bk');
			if(empty($img_path)){
				$img_path = '/public/backend/img/image_thumbnail.gif';
			}
			$img_name = \GetNameImage::make('/',$img_path);
		}else{
			$ha = \Input::get('file');
			$img_path = str_replace($this->name_project, '', $ha);
			$img_name = \GetNameImage::make('/',$img_path);
		}

		$data = array(
			'name'=> \Input::get('name'),
			'slug'=> \Unicode::make(\Input::get('name')),
			'chatlieu' => \Input::get('chatlieu'),
			'mausac' => \Input::get('mausac'),
			'size' => \Input::get('size'),
			'style' => \Input::get('style'),
			'mota' => \Input::get('mota'),
			'image_path' => $img_path,
			'image_name' => $img_name,
			'status' => \Input::get('status'),
			'order'=> \Input::get('order'),
			'danhmuc_id'=> \Input::get('danhmuc_id'),
		);
		$this->sanpham->update($sp_id,$data);

		\Notification::success('UPDATED !');
		return \Redirect::route('admin.sanpham.index',\Input::get('danhmuc_id'));
	}

	public function status(){
		if(!\Request::ajax()){
			return \View::make('404');
		}else{
			$id = \Input::get('id');
			$val = \Input::get('value');
			$data = array('status'=>$val);
			$this->sanpham->update($id,$data);
			return \Response::json(array('msg'=>$val));
		}
	}

	public function delete($id){
		$this->sanpham->delete($id);
		\Notification::success('DELETED !');
		return \Redirect::back();
	}

	public function deleteAll(){
		if(!\Request::ajax()){
			return \View::make('404');
		}else{
			$data = \Input::get('arr');
			if(!$data){
				return \Response::json(array('msg'=>'error'));
			}else{
				$this->sanpham->delete($data);
				return \Response::json(array('msg'=>$data));
			}
		}
	}


}
