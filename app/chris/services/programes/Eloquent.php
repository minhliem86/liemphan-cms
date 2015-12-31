<?php 
namespace services\programes;

use Programes;
use services\AbstractEloquent;

class Eloquent extends AbstractEloquent implements RepoInterface{
	protected $model;

	public function __construct(Programes $model){
		$this->model = $model;
	}

	public function create_Relate($data){
		return $this->model->create($data);
	}

	public function whereFirstwith($column, $id_column, array $with=array()){
		$query = $this->make($with);
		return $query->where($column,$id_column)->first();
	}
}