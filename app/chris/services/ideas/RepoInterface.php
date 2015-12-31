<?php
namespace services\ideas;

interface RepoInterface{
	public function relate_news_rand($take,$offset);
}