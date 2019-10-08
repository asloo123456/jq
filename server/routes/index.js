const express=require("express");
const pool=require("../pool.js");
var router=express.Router();
router.get("/",(req,res)=>{
    var sql="select img from image_index where pid";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});

module.exports=router;