<?php
namespace lienhoa\models;

class News extends \Eloquent{
	protected $table = 'news';

	protected $fillable = ['title','content','image_path','image_name','status','order','slug'];
}