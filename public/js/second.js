$(function(){
    $.ajax({
    url:"http://localhost:3000/second",
    type:"get",
    dataType:"json",
    success:function(result){
    // 蜗居
    var html="";
    var p1=result.slice(0,8);
    for(var i=0;i<p1.length;i++){
        html+=` <div class="col-3">
        <img src="${p1[i].img1}" class="w-100">
         <img src="${p1[i].img2}" class="w-100 my_bg">
    </div>`;
    }
    $("#wj").html(html);
    //服饰
    var p2=result.slice(8,16);
    var html="";
    for(var i=0;i<p2.length;i++){
        html+=`<div class="col-3">
        <img src="${p2[i].img1}"class="w-100">
        <img src="${p2[i].img2}"class="w-100 my_bg">
    </div>`;
    }
    $("#fs").html(html);
    //清洁
    var p3=result.slice(16,20);
    var html="";
    for(var i=0;i<p3.length;i++){
        html+=`<div class="col-3">
        <img src="${p3[i].img1}"class="w-100">
        <img src="${p3[i].img2}"class="w-100 my_bg">
    </div>`;
    }
    $("#qj").html(html);
    //零食
    var p4=result.slice(20);
    var html="";
    for(var i=0;i<p4.length;i++){
        html+=`<div class="col-3">
        <img src="${p4[i].img1}"class="w-100">
        <img src="${p4[i].img2}"class="w-100 my_bg">
    </div>`;
    }
    $("#ls").html(html);
}})})