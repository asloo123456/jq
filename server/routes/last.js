const express=require("express");
const pool=require("../pool.js");
var router=express.Router();
router.get("/",(req,res)=>{
    var sql="select * from image_last";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});

module.exports=router;