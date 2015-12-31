<?php
namespace services\programes;

interface RepoInterface{
	public function create_Relate($data);

	public function whereFirstwith($column, $id_column, array $with=array());
}