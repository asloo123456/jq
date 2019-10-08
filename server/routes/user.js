const express=require("express");
const pool=require("../pool.js");
var router=express.Router();
//1.注册用户
router.get("/v1/sel/:uname&:upwd",(req,res)=>{
  var $uname=req.params.uname;
	var $upwd=req.params.upwd;
	pool.query("SELECT * FROM xz_user WHERE uname=? AND upwd=?",[$uname,$upwd],(err,result)=>{
	  if(err) throw err;
		console.log(result);
		if(result.length>0){
		  res.send("1");
		}else{
		  res.send("0");
		};
	});
});
router.post("/v1/reg",(req,res)=>{
	var obj=req.body;
	pool.query("INSERT INTO xz_user SET ?",[obj],(err,result)=>{
	  if(err) throw err;
		if(result.affectedRows>0){
		  res.send("1");
		}else{
		  res.send("0");
		};
	});
});
//2.登入接口
router.get("/v1/login/:uname&:upwd",(req,res)=>{
  var $uname=req.params.uname;
	var $upwd=req.params.upwd;
	pool.query("select * from xz_user where uname=? and upwd=?",[$uname,$upwd],(err,result)=>{
	  if(err) throw err;
		console.log(result);
		if(result.length>0){
		  res.send("1");
		}else{
		  res.send("0");
		}
	});
});
router.post("/v1/reg",(req,res)=>{
	var obj=req.body;
	pool.query("INSERT INTO xz_user SET ?",[obj],(err,result)=>{
	  if(err) throw err;
		if(result.affectedRows>0){
		  res.send("1");
		}else{
		  res.send("0");
		};
	});
});
//查询用户
router.get("/v1/update/:uid",(req,res)=>{
  var $uid=req.params.uid;
	pool.query("SELECT * FROM xz_user WHERE uid=?",[$uid],(err,result)=>{
	  if(err) throw err;
		res.send(result);
	});
});







module.exports=router;