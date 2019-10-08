
$(function(){
    
    // 找到小图片的ul,后续可做移动用
  
})

$(function(){
    $.ajax({
        url:"http://localhost:3000/last",
        type:"get",
        // data:{},
        dataType:"json",
        success:function(result){
            var html=``;
            for(var item of result){
                html+=`			<li >
                <a href="javascript:;" class="btn p-0">
                    <img src="${item.sm_img}" data-md="${item.md_img}"
                    data-lg="${item.lg_img}">
                </a>
            </li>`;
            }
            $("#imgs ul").html(html);

            var  html=`<h4 class="my_title  price">${item.title}</h4>
                <div class="my_pro pt-0">
                    <h3 class="pro_font pl-2"> ${item.stitle}</h3>
                    <div class="pro_price">
                        <h4 class="price pt-2 pl-2">
                            价格:
                            <span class="price_span">¥${item.price}</span>
                        </h4>
                        <h4 class="price pt-2 pl-2">${item.letter}</h4>
                    </div>`;
            $(".pro").prepend(html);

            var  html=``;
            var specs=result[0].sell.split(",");
            for(var i=0;i<specs.length;i++){
                html+=`<a class="btn btn-sm" href="javascript:;">${specs[i]}</a>`
            }
            $("#specs").html(html);
        // 放大镜
        var $list=$("#imgs ul");
        var leng=document.querySelectorAll("#imgs li");
        $list.on("click","li",function(e){
            var $list=$(e.target);
            // 绑定事件，进行大中小图片的统一切换
            $(".big_area img").prop("src",$list.attr("data-md"));
            $(".small_area img").prop("src",$list.attr("data-lg"));
        })
        // 找到左右按钮
        var $left=$("#imgs :first");
        var $right=$left.next();
        var moved=0;
        //绑定左右点击事件
        $right.click(function(e){
            e.preventDefault();   
            moved++;
            $list.css("margin-left",-83*moved);
        })
        $left.click(function(e){
            e.preventDefault();
            moved--;
            $list.css("margin-left",-83*moved);
        })
        //找到遮罩层和大div和大图片
        var $mask=$(".mask");
        var $smask=$("#supmask");
        var $big=$(".big_area");
        var max=200;//div的宽-mask的宽
        $smask.hover(function(){
            // 使遮罩层与大图同时隐藏
            $mask.toggleClass("d-none");
            $big.toggleClass("d-none");
        })
        .mousemove(function(e){
            // 计算mask宽高
            var left=e.offsetX-$smask.get(0).offsetLeft-$mask.width()/2;
            var top=e.offsetY-$smask.get(0).offsetTop-$mask.height()/2;
            if(left<0) left=0;
            else if(left>max) left=max;
            if(top<0) top=0;
            else if(top>max) top=max;
            $mask.css({left,top});  
            var position={"left":-2*left,'top':-2*top,position:"absolute"};
    
            $big.find("img").css(position);
        
         })
        } 
    })
})
