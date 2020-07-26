
$(function(){
	/*点击收藏*/
	var index = 0;
	$("#content_shoucang_button").click(function(){
		$(".detail_ico").toggleClass("active11");
	});
	/*点击介绍的图片*/
	$(".down_detail_top_left_bottom ul li").click(function(){
		index = $(this).index();
		if(index == 0){
			$(".down_detail_top_left_bottom ul li span").eq($(this).index()).addClass("down_hover");
			$(".down_detail_top_left_bottom ul li em").eq($(this).index()).addClass("em_active");
			$(this).siblings("li").find("span").removeClass("down_hover");
			$(this).siblings("li").find("em").removeClass("em_active");
			$(".down_detail_top_left_top_con video").show();
			$(".down_detail_top_left_top_con video").trigger('play');
		}else{
			$(".down_detail_top_left_bottom ul li span").eq($(this).index()).addClass("down_hover");
			$(".down_detail_top_left_bottom ul li em").eq($(this).index()).addClass("em_active");
			$(this).siblings("li").find("span").removeClass("down_hover");
			$(this).siblings("li").find("em").removeClass("em_active");
			$(".down_detail_top_left_top_con video").hide();
			$(".down_detail_top_left_top_con video").trigger('pause');
			$(".down_detail_top_left_top_con img").eq(index-1).siblings().hide();
			$(".down_detail_top_left_top_con img").eq(index-1).show();
			$(".down_detail_top_left_top_con img").eq(index-1).addClass("play_picorvideo").siblings().removeClass("play_picorvideo");
		}	
	});
	/*点击介绍的图片下面的按钮*/
	$(".down_detail_top_left_scroll_left span").click(function(){
		console.log(index);
		if(index == 0){
			alert('最前，无法前进！');
		}else if(index == 1){
			$(".down_detail_top_left_bottom ul li span").eq(index-1).addClass("down_hover");
			$(".down_detail_top_left_bottom ul li em").eq(index-1).addClass("em_active");
			$(".down_detail_top_left_bottom ul li").eq(index-1).siblings().find("span").removeClass("down_hover");
			$(".down_detail_top_left_bottom ul li").eq(index-1).siblings().find("em").removeClass("em_active");
			$(".down_detail_top_left_top_con video").show();
			$(".down_detail_top_left_top_con video").trigger('play');
			index--;
		}else{
			$(".down_detail_top_left_bottom ul li span").eq(index-1).addClass("down_hover");
			$(".down_detail_top_left_bottom ul li em").eq(index-1).addClass("em_active");
			$(".down_detail_top_left_bottom ul li").eq(index-1).siblings().find("span").removeClass("down_hover");
			$(".down_detail_top_left_bottom ul li").eq(index-1).siblings().find("em").removeClass("em_active");
			$(".down_detail_top_left_top_con img").eq(index-2).siblings().hide();
			$(".down_detail_top_left_top_con img").eq(index-2).show();
			$(".down_detail_top_left_top_con img").eq(index-2).addClass("play_picorvideo").siblings().removeClass("play_picorvideo");
			index--;
		}
	});
	$(".down_detail_top_left_scroll_right span").click(function(){
		if(index == 4){
			alert('最后，无法前进！');
		}else{
			$(".down_detail_top_left_bottom ul li span").eq(index+1).addClass("down_hover");
			$(".down_detail_top_left_bottom ul li em").eq(index+1).addClass("em_active");
			$(".down_detail_top_left_bottom ul li").eq(index+1).siblings().find("span").removeClass("down_hover");
			$(".down_detail_top_left_bottom ul li").eq(index+1).siblings().find("em").removeClass("em_active");
			$(".down_detail_top_left_top_con video").hide();
			$(".down_detail_top_left_top_con video").trigger('pause');
			$(".down_detail_top_left_top_con img").eq(index).siblings().hide();
			$(".down_detail_top_left_top_con img").eq(index).show();
			$(".down_detail_top_left_top_con img").eq(index).addClass("play_picorvideo").siblings().removeClass("play_picorvideo");
			index++;
		}
	});
	/*内容箭头的显示与否*/
	if ($(".products_js .products_js_content").height()<330) {
	    $(".products_js .products_js_more").hide();
	}else{
	    $(".products_js .products_js_content").height(330);
	}
	
	if ($(".game_js .game_js_content").height()<330) {
	    $(".game_js .game_js_more").hide();
	}else{
	    $(".game_js .game_js_content").height(330);
	}
	
	if ($(".right_contcent .language").height()<170) {
	    $(".right_contcent .language_more").hide();
	}else{
	    $(".right_contcent .language").height(170);
	}
	/*游戏介绍的内容折叠*/
	$(".game_js .game_js_more").on('click', function() {
	    if ($(this).hasClass('ckecked')) {
	        $(this).removeClass('ckecked');
	        $(".game_js .game_js_content").css({"height":"333px"});
	        $("html,body").animate({scrollTop: $(".game_js").offset().top});
	    }else{
	        $(this).addClass('ckecked');
	        $(".game_js .game_js_content").css({"height":"auto"});
	    }
	});
	/*语言折叠*/
	$(".right_contcent .language_more").on('click', function() {
	    if ($(this).hasClass('ckecked')) {
	        $(this).removeClass('ckecked');
	        $(".right_contcent .language").css({"height":"170px"});
	        $("html,body").animate({scrollTop: $(".language_con").offset().top});
	    }else{
	        $(this).addClass('ckecked');
	        $(".right_contcent .language").css({"height":"auto"});
	    }
	});
})