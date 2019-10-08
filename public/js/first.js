$(function(){
    $.ajax({
    url:"http://localhost:3000/index",
    type:"get",
    dataType:"json",
    success:function(result){
        //轮播图片
        var p1=result.slice(0,1)[0];
        var html="";
        html+=`<div class="carousel-item active">
        <img src="${p1.img}"class="w-100">
    </div>`;
        var imgs=result.slice(1,4);
            for(var img of imgs){
                html+=`<div class="carousel-item">
                <img src="${img.img}"class="w-100">
            </div>`;
            }
        $(".carousel-inner").html(html);
        //页面图片
        var ps=result.slice(4);
        var html=`<div>
        <img src="${ps[0].img}" class="w-100">
    </div>
    <div class="rel home" >
        <img src="${ps[1].img}" class="w-100">
    </div>
    <div class="rel hat">
      <img src="${ps[2].img}" class="w-100" >
    </div>
    <div class="rel cloth">
      <img src="${ps[3].img}" class="w-100" >
    </div>`;
          $("#lb").append(html);
        }   
    })
})