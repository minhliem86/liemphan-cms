<?php
namespace services\news;

interface RepoInterface{
	public function relate_news_rand($take,$offset);
}