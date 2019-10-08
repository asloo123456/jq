const express=require("express");
const pool=require("../pool.js");
var router=express.Router();
router.post("/",(req,res)=>{
    //2:接收客户请求数据 
    //  pno 页码   pageSize 页大小
    var pno = req.body.pno;
    //3:如果客户没有请示数据设置默认数据
    //  pno=1     pageSize=4
    if(!pno){
      pno = 1;
    }
    //4:创建sql语句
    var sql="select pid,img,price,title,sell,think from image_third LIMIT ?,9";
    var offset = (pno-1)*9;
    pool.query(sql,[offset],(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});

module.exports=router;