$(function(){
    //模拟触发
    $(document).ready(function(){$("#page>ul :nth-child(2) a").trigger("click") });
    
$("#page").on("click","li>a",function(e){
        var $children=$(e.target);
        var $left=$("#page>ul :first-child");     
        var $right=$("#page>ul :last-child");
        var $n=$children.html();
        var leng=document.querySelectorAll("#page li+li");             
    function trans(){
            $children.addClass("active").parent().siblings().children().removeClass("active")
        }
        function next(){
            $("#page .active").removeClass("active").parent().next().children().addClass("active");
        }
        function prev(){
            $("#page .active").removeClass("active").parent().prev().children().addClass("active");
        }
        function list(){
            return $("#page .active").html()
        }
    if($n=="下一页"){ 
            next();
            if(parseInt(list())==leng.length-1){
                $right.addClass("disabled");
            }
            $left.removeClass("disabled");
        }else if($n=="上一页"){
            prev();
            if(parseInt(list())==1){
                $left.addClass("disabled");
            }
            $right.removeClass("disabled");
        }else{
            trans();
            if(parseInt(list())>1){
                $left.removeClass("disabled");
            }else{
                $left.addClass("disabled");
            }
            if(parseInt(list())==leng.length-1){
                $right.addClass("disabled");
            }else{
                $right.removeClass("disabled");
            }
        }

   
        var pno=list();

    $.ajax({
        url:"http://localhost:3000/third",
        type:"post",
        data:{pno},
        dataType:"json",
        success:function(result){
            var html="";
            for(var item of result){
                html+=`<div class="col-4 card border-0">
                <img src="${item.img}">
                <p class="mb-0 mt-2 text-danger font-weight-bold">¥${item.price}</p>
                <h6><a href="/last.html" class="text-dark">${item.title}</a></h6>
                <span  class="text-dark">总销量
                <span class="text-warning">:${item.sell}</span>    
                <a href="#" class="text-dark bg-danger">评价:${item.think}</a>
                </span>                    
            </div>`;
            }
            $("#list").html(html);
        }
    })
})    
})
