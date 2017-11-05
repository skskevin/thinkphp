<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
class User extends Controller
{
	public function register(){


		$this->assign('title','注册页面');
		$userInfo=Db::name('user')->page("0,3")->select();
		if($userInfo){
			$this->assign('userInfo',$userInfo);
		}
		$count=Db::name('user')->count();
		//求总页数
		$pages=ceil($count/3);
		$this->assign('pages',$pages);
		return $this->fetch('index/register');
	}

	public function registre(){
		$this->assign('title','注册页面');
		return $this->fetch('index/registre');
	}

	public function doRegister(){
		
		$username=$_POST['username'];
		$password=$_POST['password'];
		//var_dump($_POST);
		$data=[
			'username'=>$username,
			'password'=>md5($password)
		];

		//返回的id 成功返回一
		$id=Db::name('user')->insert($data);
		$userId = Db::name('user')->getLastInsID();
		//var_dump($id);
		if($id){
			$userInfo=Db::name('user')->where('id',$userId)->find();
			echo json_encode($userInfo);
		}	
	}

	public function doDel(){

		$id=$_POST['id'];
		$res=Db::name('user')->where('id',$id)->delete();
		if($res){
			echo json_encode(['status'=>1]);
		}else{
			echo json_encode(['status'=>0]);
		}
	}

	public function doUpdate(){
		//var_dump($_POST);
		$id=$_POST['id'];
		$name=$_POST['username'];

		$res=Db::table('php_user')
				->where('id',$id)
				->setField('username', $name);

		if($res){

				echo json_encode(['status'=>1]);
		}
	}

	public function login(){

		$this->assign('title','登陆页面');
		return $this->fetch('index/login');
	}

	public function doLogin(){

			$this->redirect('index/index');
	}

	public function fenYe(){

		$page=$_POST['page'];
		if(!is_numeric($page)){
			$this->error('页数非数字');
		}

		$userInfo=Db::name('user')->page("$page,3")->select();

		if($userInfo){

			echo json_encode($userInfo);
		}

	}

}