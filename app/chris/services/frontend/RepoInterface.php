<?php

namespace services\frontend;

interface RepoInterface{
	// DANHMUC
	public function showdanhmuc(array $with=array());

	public function sanpham_danhmuc($slug);

	public function sanpham_detail($slug_danhmuc,$slug);

	public function name_danhmuc($slug);
	
	// SANPHAM
	public function sp_moinhat();

	public function sp_xemnhieu();

	// GIOITHIEU
	public function gioithieu();

	// TINTUC
	public function tintuc($pagi);

	public function tintuc_detail($slug);

	public function tintuc_relate($number,$slug);

	// CONTACT
	public function contact();

	public function getEmailContact();

	// SEARCH
	public function search($key);

	// CUSTOMER
	public function pushLienhe($data);
}