var time;
var index = 1;
$(function(){
	$(".point").mouseenter(function(){
		clearInterval(time);
		$(this).css("background-color","orange").siblings().css("background-color","#666666");
		$(".item_banner").eq($(this).index()).stop().fadeIn('slow').siblings().stop().fadeOut('slow');
	}).mouseleave(function(){
		index = $(this).index();
		setTime();
	});
	setTime();
	$(".item_banner").mouseenter(function(){
		clearInterval(time);
	}).mouseleave(function(){
		setTime();
	});
	$("#fhyx_banner_cleft").click(function(){
		 if(index<1){
			index = 1;
		}else{
			$(".item_banner").eq(index-1).stop().fadeIn('slow').siblings().stop().fadeOut('slow');
			$(".point").eq(index).prev().css("background-color","orange").siblings().css("background-color","#666666");
			index--;
		}
	}).mouseenter(function(){
		clearInterval(time);
	}).mouseleave(function(){
		setTime();
	});
	$("#fhyx_banner_cright").click(function(){
		if(index<=$(".point").length){
			$(".item_banner").eq(index+1).stop().fadeIn('slow').siblings().stop().fadeOut('slow');
			$(".point").eq(index+1).css("background-color","orange").siblings().css("background-color","#666666");
			index++;
		}else{
			index = 1;
		}
	}).mouseenter(function(){
		clearInterval(time);
	}).mouseleave(function(){
		setTime();
	});
	
	/*发行商特卖*/
	$(".fhyx_fxstm_title_li").click(function(){
		$(".fhyx_fxstm_con_ul").eq($(this).index()).addClass("active").siblings().removeClass("active");
	});
	/*置顶js*/
	$(".fhyxhk_link_li").click(function(){
		$(".fhyxhk_link_li").eq($(this).index()).addClass("fhyx_link_active").siblings().removeClass("fhyx_link_active");
	});
	$(window).on("scroll", function () {
	    var iScrollTop = $(this).scrollTop();
	    if (iScrollTop > $(".fhyx_pc").offset().top - 200 && iScrollTop <= $(".link_rm_c").offset().top + 60) {
	        $(".fhyx_link").show();
	    } else {
	        $(".fhyx_link").hide();
	    } 
	});
});
	
function setTime(){
	time = setInterval(function(){
		$(".point").eq(index).css("background-color","orange").siblings().css("background-color","#666666");
		$(".item_banner").eq(index).stop().fadeIn('slow').siblings().stop().fadeOut('slow');
		index++;
		if(index > $(".point").length){
			index = 1;
		}
	},4000);
}
var time2;
var index2 = 0;
$(function(){
	$(".fhyx_rm_con_top_lbtn li").mouseenter(function(){
		clearInterval(time2);
		$(this).css("background-color","#ff3600").siblings().css("background-color","#666666");
		$(".fhyx_rm_con_top_l ul li").eq($(this).index()).stop().fadeIn('slow').siblings().stop().fadeOut('slow');
	}).mouseleave(function(){
		index2 = $(this).index();
		setTime2();
	})
	setTime2();
})
function setTime2(){
	time2 = setInterval(function(){
		$(".fhyx_rm_con_top_lbtn li").eq(index2).css({"background-color":"#ff3600","width":"30px"}).siblings().css({"background-color":"#666666","width":"10px"});
		$(".fhyx_rm_con_top_l ul li").eq(index2).stop().fadeIn('slow').siblings().stop().fadeOut('slow');
		index2++;
		if(index2 > $(".fhyx_rm_con_top_lbtn li").length){
			index2 = 0;
		}
	},3000);
}

$(function(){
    $('a').click(function(){
        //根据a标签的href转换为id选择器，获取id元素所处的位置，并高度减50px（这里根据需要自由设置）
        $('html,body').animate({scrollTop: ($($(this).attr('href')).offset().top - 50 )},220);
    });
});
