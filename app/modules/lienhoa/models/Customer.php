<?php
namespace lienhoa\models;

class Customer extends \Eloquent{
	public $table = "customer_contact";

	protected $fillable = ['fullname','phone','email','company_name','messages','xem'];
}