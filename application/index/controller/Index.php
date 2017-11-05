<?php
namespace app\index\controller;
use think\View;

class Index
{
    public function index()
    {
    	$view =new View();
    	$view->assign('title','首页');
    	return $view->fetch();
    }
}
