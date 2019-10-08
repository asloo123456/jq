const express=require("express");
const userRouter=require("./routes/user.js");
//引入主页及其他页面
const index=require("./routes/index.js");
const second=require("./routes/second.js");
const third=require("./routes/third.js");
const last=require("./routes/last.js");
const bodyParser=require("body-parser");
//引入cors 准备跨域
const cors=require("cors");
//创建服务器，监听端口
var app=express();
app.listen(3000);
app.use(cors({
  origin:"http://127.0.0.1:5050",
  origin:"http://127.0.0.1:5501"
}));
//app.use(express.static("public"));
//使用post请求
app.use(bodyParser.urlencoded({
  extended:false
}));







//各个接口
app.use("/user",userRouter);
app.use("/index",index);
app.use("/second",second);
app.use("/third",third);
app.use("/last",last);