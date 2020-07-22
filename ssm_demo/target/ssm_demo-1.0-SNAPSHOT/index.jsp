<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="keywords" content="PC游戏,PS4游戏,XBOX游戏,Switch游戏,电脑硬件外设,游戏手办,服饰,3C数码,游戏书籍,凤凰游戏商城">
  <meta name="description" content="凤凰游戏商城提供在线正版游戏购买、游戏激活码、家用游戏机、游戏预售、PC游戏、PS4游戏、XBOX游戏、Switch游戏、电脑硬件外设、游戏手办、服饰、3C数码、游戏书籍等周边产品。">
  <link rel="shortcut icon" href="https://pics.images.ac.cn/image/5f1008907e854.html" type="image/x-icon"/>
  <title>星空游戏-XKYX.COM</title>
  <!-- 确保适当的缩放，在head中间加个viewport元数据标签 -->
  <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
  <!-- 如果有自定义的样式覆盖bootstrap的内容，需要引入要在bootstrap样式后面 -->
  <link rel="stylesheet" href="static/css/bootstrap.min.css" />
  <link rel="stylesheet" href="http://jrain.oscitas.netdna-cdn.com/tutorial/css/fontawesome-all.min.css">
  <link rel="stylesheet" type="text/css" href="static/css/bootstrap-grid.min.css">
  <link rel="stylesheet" type="text/css" href="static/css/htmleaf-demo.css">
  <script src="static/js/jquery-3.5.1.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <script src="static/js/fh_index.js"></script>
  <script src="static/js/fh_index_car.js"></script>
  <script src="static/js/jquery.SuperSlide.2.1.3.js"></script>
  <link rel="stylesheet" href="static/css/fh_index.css" type="text/css" />
  <script type="text/javascript">
    $(function () {
      var $node;
      $node = $("<div style='position: absolute;' id='movePic'><img src='https://imgsa.baidu.com/forum/w%3D580/sign=f9458d402da446237ecaa56aa8227246/01d6ecfe9925bc31c807f6a253df8db1cb137051.jpg' height='30px' width='30px'>nice job</div>");
      $("#imgid").after($node);
      $node.hide();
      $("#imgid").mousemove(function (e) {
        $node.css("left", e.pageX + 20);
        $node.css("top", e.pageY + 20);
      });
      $("#imgid").hover(function () {
        $node.show();
      }, function () {
        $node.hide();
      });
    })
  </script>
</head>
<body>
<a href="#" id="fh_db"></a>
<div class="fhyxhk_header_global">
  <div class="fhyxhk_header">
    <!-- logo -->
    <div class="fhyxhk_header_left">
      <a href="#" class="fhyxhk_header_logo">
        <img src="https://pics.images.ac.cn/image/5f0fc58f81ffd.html" style="width: 260px;"/>
      </a>
    </div>
    <!-- search -->
    <div class="fhyxhk_header_center" id="fhyxhk_header_center">
      <div class="fhyxhk_header_search">
        <form action="/list/search" method="post">
          <div class="fhyxhk_header_search_b">
            <input type="text" id="search_input" value="" name="keyword" placeholder="请输入关键词"/>
            <input type="submit" id="search_sub" value="" name="sub"/>
            <span></span>
          </div>
        </form>
      </div>
    </div>
    <!-- 商城，购物车，客服 -->
    <div class="fhyxhk_header_nav">
      <div class="fhyxhk_header_nav_con">
        <a href="/ucenter/" class="fhyxhk_header_nav_li">
          <span></span>
          <i>我的商城</i>
        </a>
        <em class="fhyxhk_header_nav_li header_car" style="width: 120px;">
          <a href="javascript:void(0);" class="fhyxhk_header_car">
            <span class="h_car"></span>
            <i>购物车</i>
          </a>
          <div class="fhyxhk_header_car_body">
            <div class="fhyxhk_header_car_detail">
              <div class="fhyxhk_header_car_top">
                <div class="fhyxhk_header_car_left">
                  <div class="fhyxhk_header_car_title">你的购物车</div>
                  <div class="fhyxhk_header_car_num">已增加<label>0</label>件商品</div>
                </div>
                <div class="fhyxhk_header_car_right">
                  <a href="javascript:void(0);" class="fhyxhk_header_tocar">前往购物车</a>
                  <div class="fhyxhk_header_car_total"></div>
                </div>
              </div>
              <div class="fhyxhk_header_car_tab">

              </div>
              <div class="fhyxhk_header_car_scroll">
                <div class="fhyxhk_header_car_contain top_outlain">

                </div>
                <div class="fhyxhk_header_car_contain top_unoutlain">

                </div>
              </div>
            </div>
          </div>
        </em>
        <a href="/server/" class="fhyxhk_header_nav_li">
          <span class="h_kf"></span>
          <i>客服中心</i>
        </a>

      </div>
    </div>
    <!-- 登录 -->
    <div class="fhyxhk_header_right">
      <div class="fhyxhk_header_user">
        <div class="fhyxhk_header_language">
          <div class="fhyxhk_header_language_txt">语言</div>
          <span id="select_language"></span>
          <div class="language_list">
            <a href="#" data-id="0" id="fhyx_jz_langguage">简中</a>
            <a href="#" data-id="1">繁中</a>
          </div>
        </div>
        <div class="fhyxhk_header_login">
          <a href="${pageContext.request.contextPath}/book/allBook" id="login_btn">登录</a>
        </div>
      </div>
    </div>
  </div>
  <!-- 导航栏 -->
  <div class="fhyxhk_nav_c">
    <div class="fhyxhk_nav">
      <a href="#" class="fhyxhk_link nactive" style="padding-left:0px;"><i>首页<span style="left:4px;margin-left:0px;"></span></i></a>
      <em class="fhyxhk_link fhyxhk_plat">
        <a href="#">游戏<span></span></a>
        <div class="fhyxhk_plat_con">
          <div class="plat-con-head">
            <p>PC游戏</p>
            <p>主机游戏</p>
          </div>

          <ul>
            <li>
              <div class="fhyxhk_type_detail"><label></label><a href="#">凤凰游戏</a></div>
              <div class="fhyxhk_type_detail"><label></label><a href="#">STEAM</a></div>
              <div class="fhyxhk_type_detail"><label></label><a href="#">ORIGIN</a></div>
              <div class="fhyxhk_type_detail"><label></label><a href="#">UPLAY</a></div>
              <div class="fhyxhk_type_detail"><label></label><a href="#">Battlenet</a></div>
            </li>
            <li>
              <div class="fhyxhk_type_detail"><label></label><a href="#">EPIC</a></div>
              <div class="fhyxhk_type_detail"><label></label><a href="#">Bethesda</a></div>
              <div class="fhyxhk_type_detail"><label></label><a href="#">Rockstar</a></div>

              <div class="fhyxhk_type_detail"><label></label><a href="#">MOJANG</a></div>
              <div class="fhyxhk_type_detail"><label></label><a href="#">其他</a></div>
            </li>
            <li class="tv-game">

              <div class="fhyxhk_type_detail"><label></label><a href="#">PS4</a></div>
              <div class="fhyxhk_type_detail"><label></label><a href="#">XBOX</a></div>
              <div class="fhyxhk_type_detail"><label></label><a href="#">SWITCH</a></div>
            </li>
          </ul>
        </div>
      </em>
      <a href="/zt/zhuji/" class="fhyxhk_link"><i>主机<span class="fhyxhk_links"></span></i></a>
      <a href="#" class="fhyxhk_link"><i>服饰<span></span></i></a>
      <a href="#" class="fhyxhk_link"><i>衍生<span></span></i></a>
      <a href="#" class="fhyxhk_link"><i>3C数码<span></span></i></a>
      <a class="fhyxhk_app" href="/zt/app/" target="_self" style="width:160px;">
        <i class="fhyxhk_app_i"></i>
        <label style="font-size:16px;">星空游戏<br/>APP下载</label>
      </a>
      <a href="//www.fhyx.hk" class="fhyxhk_location">香港站</a>
      <a href="#" class="fhyxhk_adv"><img src="https://img.fhyx.com/uploads/2020/07/01/20200701115615628.gif" width="130" height="35"/></a>
    </div>
  </div>
</div>
<div class="fhyx_banner_c">
  <div class="fhyx_banner_ct">
    <ul class="fhyx_banner">
      <li class="item_banner active_banner"><img src="https://img.fhyx.com/uploads/2020/07/02/2020070252449830.jpg" alt="轮播图"></li>
      <li class="item_banner"><img src="https://img.fhyx.com/uploads/2020/06/30/20200630114238674.jpg" alt="轮播图"></li>
      <li class="item_banner"><img src="https://img.fhyx.com/uploads/2020/06/26/2020062692700552.jpg" alt="轮播图"></li>
      <li class="item_banner"><img src="https://img.fhyx.com/uploads/2020/04/30/20200430111455311.jpg" alt="轮播图"></li>
      <li class="item_banner"><img src="https://img.fhyx.com/uploads/2020/04/15/2020041520348298.jpg" alt="轮播图"></li>
      <li class="item_banner"><img src="https://img.fhyx.com/uploads/2020/07/06/2020070642929840.jpg" alt="轮播图"></li>
      <li class="item_banner"><img src="https://img.fhyx.com/uploads/2020/01/20/2020012053819213.jpg" alt="轮播图"></li>
    </ul>
    <div class="fhyx_banner_cleft banner_btn" id="fhyx_banner_cleft"></div>
    <div class="fhyx_banner_cright banner_btn" id="fhyx_banner_cright"></div>
    <ul class="dot">
      <li class="point active"></li>
      <li class="point"></li>
      <li class="point"></li>
      <li class="point"></li>
      <li class="point"></li>
      <li class="point"></li>
      <li class="point"></li>
    </ul>
  </div>
  <div class="fhyx_itemlist">
    <div class="fhyx_conpon fhyx_selver">
      <div class="fhyx_itemlist_left">
        <label>优惠券</label>
        <i>COUPON</i>
      </div>
      <a href="/coupon/" target="_self" class="fhyx_itemlist_link">立即领取</a>
    </div>
    <div class="fhyx_gonggao fhyx_selver">
      <div class="fhyx_itemlist_left">
        <label>公告栏</label>
        <i>BULLETIN</i>
      </div>
      <a href="https://www.fhyx.com/notice/" target="_self" class="fhyx_itemlist_link">查看详情</a>
    </div>
    <div class="fhyx_credits fhyx_selver">
      <div class="fhyx_itemlist_left">
        <label>积分商城</label>
        <i>POINS MALL</i>
      </div>
      <a href="/credit/" target="_self" class="fhyx_itemlist_link">立即进入</a>
    </div>
  </div>
</div>

<!--PC游戏-start-->
<div class="fhyx_pc link_pc_c">
  <a href="#" id="pc_yx"></a>
  <div class="fhyx_pc_title">
    <div class="fhyx_pc_title_left">
      <label></label>
      <div class="fhyx_pc_txt">PC游戏</div>
    </div>
    <div class="fhyx_pc_title_right">
      <div class="fhyx_pc_title_tab">
        <div class="fhyx_pc_title_li l_active">
          <span>最新上市</span>
          <label></label>
        </div>
        <div class="fhyx_pc_title_li">
          <span>即将上市</span>
          <label></label>
        </div>
      </div>
      <a href="#" target="_self">更多+</a>
    </div>
  </div>
  <div class="fhyx_pc_con">
    <div class="fhyx_pc_contain fhyxhk_jjss_content">
      <div class="fhyxhk_jjss_block" id="fhyxhk_zxss_block">
        <ul class="fhyx_pc_ul">
          <li>
            <a href="#" class="fhyxhk_zxss_img" target="_self">
              <img width="158" height="210" src="https://img.fhyx.com/uploads/p/2020/06/17/2020061722517898.jpg">
              <div class="fhyxhk_zxss_des">
                <div class="fhyxhk_zxss_per">-28%</div>
                <div class="fhyxhk_zxss_pri">
                  <em>¥88.00</em><br><label>¥63.00</label>
                </div>
              </div>
            </a>
            <a class="fhyx_index_buy" href="#" target="_self">立即购买</a>
            <div class="fhyxhk_jjss_top">
              <i style=""><label></label></i><span>06月30日</span>
            </div>
            <div class="fhyxhk_jjss_bottom">
              <div class="fhyxhk_jjss_bottom_title"><a href="#" target="_self">漂移21</a> </div>
              <div class="fhyxhk_jjss_bottom_etitle">DRIFT21</div>
            </div>
          </li><li>
          <a href="#" class="fhyxhk_zxss_img" target="_self">
            <img width="158" height="210" src="https://img.fhyx.com/uploads/p/2020/06/23/2020062312101657.jpg">

            <div class="fhyxhk_zxss_des">
              <div class="fhyxhk_zxss_per">-27%</div>
              <div class="fhyxhk_zxss_pri">
                <em>¥48.00</em><br><label>¥35.00</label>
              </div>
            </div>
          </a>
          <a class="fhyx_index_buy" href="#" target="_self">立即购买</a>
          <div class="fhyxhk_jjss_top">
            <i style=""><label></label></i><span>06月22日</span>
          </div>
          <div class="fhyxhk_jjss_bottom">
            <div class="fhyxhk_jjss_bottom_title"><a href="#" target="_self">魔域地牢</a> </div>
            <div class="fhyxhk_jjss_bottom_etitle">DungeonTop</div>
          </div>
        </li><li>
          <a href="#" class="fhyxhk_zxss_img" target="_self">
            <img width="158" height="210" src="https://img.fhyx.com/uploads/p/2020/06/22/20200622124324795.jpg">

            <div class="fhyxhk_zxss_des">
              <div class="fhyxhk_zxss_per">-14%</div>
              <div class="fhyxhk_zxss_pri">
                <em>¥37.00</em><br><label>¥32.00</label>
              </div>
            </div>
          </a>
          <a class="fhyx_index_buy" href="#" target="_self">立即购买</a>
          <div class="fhyxhk_jjss_top">
            <i style=""><label></label></i><span>06月19日</span>
          </div>
          <div class="fhyxhk_jjss_bottom">
            <div class="fhyxhk_jjss_bottom_title"><a href="#" target="_self">3dSen PC</a> </div>
            <div class="fhyxhk_jjss_bottom_etitle">3dSen PC</div>
          </div>
        </li><li>
          <a href="#" class="fhyxhk_zxss_img" target="_self">
            <img width="158" height="210" src="https://img.fhyx.com/uploads/p/2020/06/19/20200619135909386.jpg">

            <div class="fhyxhk_zxss_des">
              <div class="fhyxhk_zxss_per">-10%</div>
              <div class="fhyxhk_zxss_pri">
                <em>¥199.00</em><br><label>¥179.00</label>
              </div>
            </div>
          </a>
          <a class="fhyx_index_buy" href="#" target="_self">立即购买</a>
          <div class="fhyxhk_jjss_top">
            <i style=""><label></label></i><span>06月19日</span>
          </div>
          <div class="fhyxhk_jjss_bottom">
            <div class="fhyxhk_jjss_bottom_title"><a href="#" target="_self">侍魂NeoGeo合集</a> </div>
            <div class="fhyxhk_jjss_bottom_etitle">Samurai Shodown NeoGeo Collection</div>
          </div>
        </li><li>
          <a href="#" class="fhyxhk_zxss_img" target="_self">
            <img width="158" height="210" src="https://img.fhyx.com/uploads/p/2020/06/19/2020061923828285.jpg">

            <div class="fhyxhk_zxss_des">

              <div class="fhyxhk_zxss_pri">
                <label style="line-height: 34px;">¥70.00</label>
              </div>
            </div>
          </a>
          <a class="fhyx_index_buy" href="#" target="_self">立即购买</a>
          <div class="fhyxhk_jjss_top">
            <i style=""><label></label></i><span>06月18日</span>
          </div>
          <div class="fhyxhk_jjss_bottom">
            <div class="fhyxhk_jjss_bottom_title"><a href="#" target="_self">死亡西部</a> </div>
            <div class="fhyxhk_jjss_bottom_etitle">West of Dead</div>
          </div>
        </li>
        </ul>
      </div>

    </div>


  </div>
</div>
<!--PC游戏-end-->
<a href="#" id="fx_tm"></a>
<!--发行商特卖-start-->
<div class="fhyx_fxstm_c link_fxs_c">
  <div class="fhyx_fxstm_title">
    <div class="fhyx_fxstm_title_left">
      <label></label>
      <div class="fhyx_fxstm_txt">发行商特卖</div>
    </div>
    <div class="fhyx_fxstm_title_right">
      <div class="fhyx_fxstm_title_tab">
        <div class="fhyx_fxstm_title_li">
          <span>周边专区</span>
        </div>
        <div class="fhyx_fxstm_title_li ">
          <span>P社发行商 低至2折</span>
        </div>
        <div class="fhyx_fxstm_title_li ">
          <span>椰岛游戏 低至4折</span>
        </div>
        <div class="fhyx_fxstm_title_li ">
          <span>SNK 低至3折</span>
        </div>
        <div class="fhyx_fxstm_title_li ">
          <span>光荣专区 低至3折</span>
        </div>
      </div>
    </div>
  </div>
  <div class="fhyx_fxstm_con_ul active">
    <div class="fhyx_fxstm_con_left box">
      <img src="https://img.fhyx.com/uploads/2020/07/03/2020070330732175.jpg" alt=""/>
      <div class="box-content">
        <h3 class="title1">发行商特卖</h3>
        <span class="post">星空游戏</span>
      </div>
    </div>
    <div class="fhyx_fxstm_con_right">
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2020/06/05/2020060560056929.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">汤姆克兰西：全境封锁2</p>
          <p class="etitle">Tom Clancys The Division 2</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥49.00</span>
            <span class="price">¥25.00</span>
          </div>
          <span class="zk">-49%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2020/05/25/2020052523939238.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">《刺客信条》十周年单肩包</p>
          <p class="etitle"></p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥119.00</span>
            <span class="price">¥59.00</span>
          </div>
          <span class="zk">-50%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/steam/w_img/2020/07/03/2020070332406664.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">《刺客信条》十周年双肩包</p>
          <p class="etitle"></p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥199.00</span>
            <span class="price">¥89.00</span>
          </div>
          <span class="zk">-55%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2020/06/18/2020061814039128.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">世嘉游戏机主题便携包</p>
          <p class="etitle">SEGA</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥119.00</span>
            <span class="price">¥59.00</span>
          </div>
          <span class="zk">-50%</span>
        </div>
      </a>
    </div>
  </div>
  <div class="fhyx_fxstm_con_ul">
    <div class="fhyx_fxstm_con_left box">
      <img src="https://img.fhyx.com/uploads/2020/07/03/2020070343256320.jpg" alt=""/>
      <div class="box-content">
        <h3 class="title1">发行商特卖</h3>
        <span class="post">星空游戏</span>
      </div>
    </div>
    <div class="fhyx_fxstm_con_right">
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2019/11/11/2019111141640909.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">暴战机甲兵</p>
          <p class="etitle">BATTLETECH</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥116.00</span>
            <span class="price">¥29.00</span>
          </div>
          <span class="zk">-75%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2020/02/12/202002124373058.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">钢铁雄心3</p>
          <p class="etitle">Hearts of Iron III</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥36.00</span>
            <span class="price">¥9.00</span>
          </div>
          <span class="zk">-75%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2020/04/10/20200410103359538.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">城市：天际线</p>
          <p class="etitle">Cities: Skylines</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥112.00</span>
            <span class="price">¥28.00</span>
          </div>
          <span class="zk">-75%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2020/05/22/2020052294058201.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">术士2：放逐</p>
          <p class="etitle">Warlock 2: the Exiled</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥68.00</span>
            <span class="price">¥17.00</span>
          </div>
          <span class="zk">-75%</span>
        </div>
      </a>
    </div>
  </div>
  <div class="fhyx_fxstm_con_ul ">
    <div class="fhyx_fxstm_con_left box">
      <img src="https://img.fhyx.com/uploads/2020/07/02/2020070291814729.jpg" alt=""/>
      <div class="box-content">
        <h3 class="title1">发行商特卖</h3>
        <span class="post">星空游戏</span>
      </div>
    </div>
    <div class="fhyx_fxstm_con_right">
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2019/10/15/2019101523012995.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">归家异途</p>
          <p class="etitle">HomeBehind</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥18.00</span>
            <span class="price">¥9.00</span>
          </div>
          <span class="zk">-50%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2018/08/24/201808245113568.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">启蒙</p>
          <p class="etitle">Enlightenment</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥43.00</span>
            <span class="price">¥16.00</span>
          </div>
          <span class="zk">-63%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2017/12/07/2017120751706372.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">临终：重生试炼</p>
          <p class="etitle">DYING: Reborn</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥49.00</span>
            <span class="price">¥19.00</span>
          </div>
          <span class="zk">-61%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2019/01/29/20190129123609614.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">中国式家长</p>
          <p class="etitle">Chinese Parents</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥36.00</span>
            <span class="price">¥22.00</span>
          </div>
          <span class="zk">-39%</span>
        </div>
      </a>
    </div>
  </div>
  <div class="fhyx_fxstm_con_ul ">
    <div class="fhyx_fxstm_con_left box">
      <img src="https://img.fhyx.com/uploads/2020/06/30/2020063091646498.jpg" alt=""/>
      <div class="box-content">
        <h3 class="title1">发行商特卖</h3>
        <span class="post">星空游戏</span>
      </div>
    </div>
    <div class="fhyx_fxstm_con_right">
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2017/08/08/20170808114640150.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">拳皇13</p>
          <p class="etitle">The King Of Fighter 13</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥68.00</span>
            <span class="price">¥17.00</span>
          </div>
          <span class="zk">-75%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2020/02/06/2020020680316679.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">敌后奇兵</p>
          <p class="etitle">SHOCK TROOPERS</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥31.00</span>
            <span class="price">¥15.00</span>
          </div>
          <span class="zk">-52%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2020/03/05/202003053223667.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">拳皇14</p>
          <p class="etitle">The King of Fighters XIV</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥249.00</span>
            <span class="price">¥124.00</span>
          </div>
          <span class="zk">-50%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2020/03/05/2020030534104768.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">月华剑士</p>
          <p class="etitle">The Last Blade</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥36.00</span>
            <span class="price">¥18.00</span>
          </div>
          <span class="zk">-50%</span>
        </div>
      </a>
    </div>
  </div>
  <div class="fhyx_fxstm_con_ul ">
    <div class="fhyx_fxstm_con_left box">
      <img src="https://img.fhyx.com/uploads/2020/06/28/2020062893413894.jpg" alt=""/>
      <div class="box-content">
        <h3 class="title1">发行商特卖</h3>
        <span class="post">星空游戏</span>
      </div>
    </div>
    <div class="fhyx_fxstm_con_right">
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2017/02/28/2017022860004396.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">三国志13</p>
          <p class="etitle">Romance Of Three Kingdom 13</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥390.00</span>
            <span class="price">¥155.00</span>
          </div>
          <span class="zk">-60%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2017/03/13/2017031331656430.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">真三国无双7：猛将传</p>
          <p class="etitle">Shin Sangokumusou 7 Moushouden</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥159.00</span>
            <span class="price">¥63.00</span>
          </div>
          <span class="zk">-60%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2019/12/30/2019123011282886.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">三国志14</p>
          <p class="etitle">Romance Of Three Kingdom 14</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥349.00</span>
            <span class="price">¥275.00</span>
          </div>
          <span class="zk">-21%</span>
        </div>
      </a>
      <a class="fhyx_fxstm_con_right_li" href="#" target="_self">
        <img src="https://img.fhyx.com/uploads/2019/07/10/20190710105632504.jpg" alt=""/>
        <div class="fhyx_fxstm_con_right_li_tit">
          <p class="title">仁王</p>
          <p class="etitle">NIOH</p>
        </div>
        <div class="fhyx_fxstm_con_right_li_price">
          <div class="">
            <span class="old_price">¥249.00</span>
            <span class="price">¥119.00</span>
          </div>
          <span class="zk">-52%</span>
        </div>
      </a>
    </div>
  </div>
</div>
<!--发行商特卖-end-->
<a href="#" id="fh_fd"></a>
<!--凤凰福袋-start-->
<div class="fhyx_fhfd_c link_fd_c">
  <div class="fhyxhk_zxss_title"><i></i><span>凤凰福袋</span><a href="#" target="_self">更多+</a></div>
  <div class="fhyx_fhfd_container">
    <div class="fhyx_fhfd_ul"><a class="fhyx_fhfd_li" href="#" target="_self">
      <img src="https://img.fhyx.com/uploads/turntable/2020/06/30/20200630110356911.jpg" class="img">
      <img src="https://img.fhyx.com/uploads/turntable/2020/06/30/2020063011035088.png" class="bg_img">
      <div class="maybe_like_con" data-endtime="1594396550000">
        结束于<label>0</label> 天 <label>0</label> 小时 <label>0</label> 分 <label>0</label> 秒
      </div>
      <div class="con">
        <p class="title">夏日限定 不定时更新</p>
        <p class="prize">¥5.00</p>
        <p class="count">90件商品</p>
      </div>
    </a><a class="fhyx_fhfd_li" href="#" target="_self">
      <img src="https://img.fhyx.com/uploads/turntable/2020/07/11/20200711121914774.png" class="img">
      <img src="https://img.fhyx.com/uploads/turntable/2020/06/30/20200630105042767.png" class="bg_img">
      <div class="maybe_like_con" data-endtime="1594396799000">
        结束于<label>0</label> 天 <label>0</label> 小时 <label>0</label> 分 <label>0</label> 秒
      </div>
      <div class="con">
        <p class="title">夏日限定 不定时更新</p>
        <p class="prize">¥9.99</p>
        <p class="count">82件商品</p>
      </div>
    </a><a class="fhyx_fhfd_li" href="#" target="_self">
      <img src="https://img.fhyx.com/uploads/turntable/2020/07/11/20200711121900955.png" class="img">
      <img src="https://img.fhyx.com/uploads/turntable/2020/06/30/20200630104102192.png" class="bg_img">
      <div class="maybe_like_con" data-endtime="1594396550000">
        结束于<label>0</label> 天 <label>0</label> 小时 <label>0</label> 分 <label>0</label> 秒
      </div>
      <div class="con">
        <p class="title">夏日限定 不定时更新</p>
        <p class="prize">¥19.99</p>
        <p class="count">80件商品</p>
      </div>
    </a><a class="fhyx_fhfd_li" href="#" target="_self">
      <img src="https://img.fhyx.com/uploads/turntable/2020/07/11/20200711121849900.png" class="img">
      <img src="https://img.fhyx.com/uploads/turntable/2020/06/30/2020063010285119.png" class="bg_img">
      <div class="maybe_like_con" data-endtime="1594396550000">
        结束于<label>0</label> 天 <label>0</label> 小时 <label>0</label> 分 <label>0</label> 秒
      </div>
      <div class="con">
        <p class="title">夏日限定 不定时更新</p>
        <p class="prize">¥29.90</p>
        <p class="count">65件商品</p>
      </div>
    </a>
    </div>
  </div>
</div>
<!--凤凰福袋-end-->
<a href="#" id="fh_cp"></a>
<!--凤凰出品-start-->
<div class="fhyx_product link_product_c">
  <div class="fhyx_product_con">
    <div class="fhyx_product_title">
      <label></label>
      <div class="fhyx_product_title_c">凤凰出品</div>
    </div>
    <div class="fhyx_product_info">
      <div class="fhyx_product_detail">
        <div class="fhyx_product_detail_t">凤凰游戏<label>出品</label></div>
        <div class="fhyx_product_detail_s">创造更优的游戏品质!</div>
        <div class="fhyx_product_detail_line"></div>
        <div class="fhyx_product_detail_txt">致力于开发中国好游戏为玩家提供一站式体验</div>
        <a href="#" class="fhyx_product_detail_btn">更多凤凰游戏作品</a>
      </div>
      <div class="fhyx_product_list">
        <ul>
          <li class="fhyx_product_list_li">
            <div class="fhyx_product_list_img"><img width="270" height="450" src="https://img.fhyx.com/uploads/2020/04/30/2020043025209446.jpg"/></div>
            <div class="fhyx_product_list_info">
              <div class="fhyx_product_list_txt">
                一款武侠背景的半沙盒游戏
              </div>
              <div class="fhyx_product_list_bottom">
                <div class="fhyx_product_list_des">
                  <div class="fhyx_product_list_t">紫塞秋风</div>
                  <div class="fhyx_product_list_e">The Wind Road</div>
                </div>
                <div class="fhyx_product_list_btn">
                  <a href="/item/4358.html" target="_self">购买游戏</a><a href="#" target="_self" style="margin-right:0px;">进入官网</a>
                </div>
              </div>
            </div>
          </li><li class="fhyx_product_list_li">
          <div class="fhyx_product_list_img"><img width="270" height="450" src="https://img.fhyx.com/uploads/2020/04/14/2020041440101678.jpg"/></div>
          <div class="fhyx_product_list_info">
            <div class="fhyx_product_list_txt">
              仙侠题材ARPG单机游戏
            </div>
            <div class="fhyx_product_list_bottom">
              <div class="fhyx_product_list_des">
                <div class="fhyx_product_list_t">亦春秋</div>
                <div class="fhyx_product_list_e">Power Of Seasons</div>
              </div>
              <div class="fhyx_product_list_btn">
                <a href="/item/4328.html" target="_self">购买游戏</a><a href="#" target="_self" style="margin-right:0px;">进入官网</a>

              </div>
            </div>
          </div>
        </li><li class="fhyx_product_list_li">
          <div class="fhyx_product_list_img"><img width="270" height="450" src="https://img.fhyx.com/uploads/2020/07/02/2020070211253868.jpg"/></div>
          <div class="fhyx_product_list_info">
            <div class="fhyx_product_list_txt">
              讲述的《侠客风云传》正传之前的故事
            </div>
            <div class="fhyx_product_list_bottom">
              <div class="fhyx_product_list_des">
                <div class="fhyx_product_list_t">侠客风云传前传</div>
                <div class="fhyx_product_list_e">Tale of Wuxia:The Pre-Sequel</div>
              </div>
              <div class="fhyx_product_list_btn">
                <a href="/item/1090.html" target="_self">购买游戏</a><a href="#" target="_self" style="margin-right:0px;">进入官网</a>
              </div>
            </div>
          </div>
        </li>
        </ul>
      </div>

    </div>
  </div>
</div>
<!--凤凰出品-end-->
<a href="#" id="rm_cs"></a>
<!--热门厂商-start-->
<div class="fhyx_cs">
  <div class="fhyx_diy_title">
    <label></label>
    <div class="fhyx_diy_title_c">热门厂商</div>
    <a href="/vendor/" >更多 +</a>
  </div>
  <div class="fhyx_cs_con">
    <div class="fhyx_cs_list">
      <ul class="fhyx_cs_ul">
        <li>
          <a href="#" ><img src="https://img.fhyx.com/uploads/2017/12/08/20171208916021000.png"/></a>
        </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2016/07/12/20160712120018513.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2016/07/12/20160712125801808.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2017/12/08/2017120891415470.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2017/12/08/2017120891619564.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2017/12/08/2017120891331124.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2016/07/12/2016071222424165.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2017/12/08/2017120891351894.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2016/07/12/2016071212736716.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2019/04/28/2019042860634791.jpg"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2016/07/12/2016071235716475.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2017/12/08/2017120891659316.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2016/07/12/2016071210752902.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2016/07/12/2016071211046849.png"/></a>
      </li><li>
        <a href="#" ><img src="https://img.fhyx.com/uploads/2020/06/05/20200605111357372.jpg"/></a>
      </li>
      </ul>t
    </div>
    <div class="prev"></div>
    <div class="next"></div>
  </div>
</div>
<script type="text/javascript">
  jQuery(".fhyx_cs_con").slide({mainCell:".fhyx_cs_list ul",autoPlay:true,effect:"leftMarquee",vis:5,interTime:50});
</script>
<!--热门厂商-end-->
<a href="#" id="rm_js"></a>
<!-- 热门精选-start -->
<div class="fhyx_rm link_rm_c">
  <div class="fhyx_rm_title">
    <div class="fhyx_rm_title_left"><label></label><span>热门精选</span></div>
    <a href="#" >更多+</a>
  </div>
  <div class="fhyx_rm_con">
    <div class="fhyx_rm_con_top">
      <div class="fhyx_rm_con_top_l">
        <ul>
          <li>
            <a href="#">
              <img width="560" height="410" src="https://img.fhyx.com//uploads//2020//06//30//20200630105044284.jpg" >
            </a>
            <div class="fhyx_rm_con_top_linfo">
              <div class="fhyxhk_rmjx_per">-11%</div>
              <div class="fhyxhk_rmjx_price">
                <span>￥256.00</span>
                <br />
                <label>￥228.00</label>
              </div>
            </div>
          </li>
          <li>
            <a href="#">
              <img width="560" height="410" src="https:\\img.fhyx.com\uploads\2020\07\08\2020070843118825.jpg" >
            </a>
            <div class="fhyx_rm_con_top_linfo">
              <div class="fhyxhk_rmjx_per">-16%</div>
              <div class="fhyxhk_rmjx_price">
                <span>￥298.00</span>
                <br />
                <label>￥249.00</label>
              </div>
            </div>
          </li>
          <li>
            <a href="#">
              <img width="560" height="410" src="https://img.fhyx.com//uploads//2020//07//08//20200708120834295.jpg" >
            </a>
            <div class="fhyx_rm_con_top_linfo">
              <div class="fhyxhk_rmjx_per">-10%</div>
              <div class="fhyxhk_rmjx_price">
                <span>￥125.00</span>
                <br />
                <label>￥112.00</label>
              </div>
            </div>
          </li>
          <li>
            <a href="#">
              <img width="560" height="410" src="https://img.fhyx.com//uploads//2020//07//02//2020070252808638.jpg" >
            </a>
            <div class="fhyx_rm_con_top_linfo">
              <div class="fhyxhk_rmjx_per">-20%</div>
              <div class="fhyxhk_rmjx_price">
                <span>￥298.00</span>
                <br />
                <label>￥238.00</label>
              </div>
            </div>
          </li>
          <li>
            <a href="#">
              <img width="560" height="410" src="https://img.fhyx.com//uploads//2020//06//16//2020061630136195.jpg" >
            </a>
            <div class="fhyx_rm_con_top_linfo">
              <div class="fhyxhk_rmjx_per">-6%</div>
              <div class="fhyxhk_rmjx_price">
                <span>￥349.00</span>
                <br />
                <label>￥329.00</label>
              </div>
            </div>
          </li>
          <li>
            <a href="#">
              <img width="560" height="410" src="https://img.fhyx.com//uploads//2020//06//09//2020060943614192.jpg" >
            </a>
            <div class="fhyx_rm_con_top_linfo nozk" style="display: none;">
              <div class="fhyxhk_rmjx_price">
                <label>￥56.00</label>
              </div>
            </div>
          </li>
        </ul>
        <div class="fhyx_rm_con_top_lbtn">
          <li style="background-color: #ff3600;"></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
        </div>
      </div>
      <div class="fhyx_rm_con_top_r">
        <div class="fhyx_rmjx_con_r_li rm_contain">
          <a href="#" class="fhyx_rm_con_top_rc">
            <div class="fhyxhk_rmjx_bottom_i">
              <img width="286" height="135" src="https://img.fhyx.com//uploads//2020//04//01//2020040111758981.jpg" >
            </div>
            <div class="fhyxhk_rmjx_shodow">
              <div class="fhyxhk_rmjx_shodow_t">人类：一败涂地</div>
              <div class="fhyxhk_rmjx_shodow_e">Human:Fail Flat</div>
              <div class="fhyxhk_rmjx_shodow_b">
                <span>立即购买</span>
              </div>
            </div>
            <div class="fhyxhk_rmjx_des">
              <div class="fhyxhk_rmjx_tper">-60%</div>
              <div class="fhyxhk_rmjx_tprice">
                <span>￥125.00</span>
                <br>
                <label>￥112.00</label>
              </div>
              <div class="m_btn hk_steam"></div>
            </div>
          </a>
        </div>
        <div class="fhyx_rmjx_con_r_li rm_contain">
          <a href="#" class="fhyx_rm_con_top_rc">
            <div class="fhyxhk_rmjx_bottom_i">
              <img width="286" height="135" src="https://img.fhyx.com//uploads//2020//06//15//202006156202487.jpg" >
            </div>
            <div class="fhyxhk_rmjx_shodow">
              <div class="fhyxhk_rmjx_shodow_t">女神异闻录4：黄金版</div>
              <div class="fhyxhk_rmjx_shodow_e">PERSONA4 The Golden</div>
              <div class="fhyxhk_rmjx_shodow_b">
                <span>立即购买</span>
              </div>
            </div>
            <div class="fhyxhk_rmjx_des">
              <div class="fhyxhk_rmjx_tper">-10%</div>
              <div class="fhyxhk_rmjx_tprice">
                <span>￥125.00</span>
                <br>
                <label>￥112.00</label>
              </div>
              <div class="m_btn hk_steam"></div>
            </div>
          </a>
        </div>
        <div class="fhyx_rmjx_con_r_li rm_contain">
          <a href="#" class="fhyx_rm_con_top_rc">
            <div class="fhyxhk_rmjx_bottom_i">
              <img width="286" height="135" src="https://img.fhyx.com//uploads//2020//05//28//2020052850637383.jpg" >
            </div>
            <div class="fhyxhk_rmjx_shodow">
              <div class="fhyxhk_rmjx_shodow_t">亦春秋</div>
              <div class="fhyxhk_rmjx_shodow_e">Power Of Seasons</div>
              <div class="fhyxhk_rmjx_shodow_b">
                <span>立即购买</span>
              </div>
            </div>
            <div class="fhyxhk_rmjx_des">
              <div class="fhyxhk_rmjx_tper">-10%</div>
              <div class="fhyxhk_rmjx_tprice">
                <span>￥66.00</span>
                <br>
                <label>￥56.00</label>
              </div>
              <div class="m_btn hk_steam"></div>
            </div>
          </a>
        </div>
        <div class="fhyx_rmjx_con_r_li rm_contain">
          <a href="#" class="fhyx_rm_con_top_rc">
            <div class="fhyxhk_rmjx_bottom_i">
              <img width="286" height="135" src="https://img.fhyx.com//uploads//2020//03//31//2020033154850506.jpg" >
            </div>
            <div class="fhyxhk_rmjx_shodow">
              <div class="fhyxhk_rmjx_shodow_t">生化危机3：重制版</div>
              <div class="fhyxhk_rmjx_shodow_e">Resident Evil 3 Remake</div>
              <div class="fhyxhk_rmjx_shodow_b">
                <span>立即购买</span>
              </div>
            </div>
            <div class="fhyxhk_rmjx_des">
              <div class="fhyxhk_rmjx_tper">-34%</div>
              <div class="fhyxhk_rmjx_tprice">
                <span>￥414.00</span>
                <br>
                <label>￥273.00</label>
              </div>
              <div class="m_btn hk_steam"></div>
            </div>
          </a>
        </div>
      </div>
    </div>
    <div class="fhyx_rm_con_bottom">
      <a href="#" class="fhyx_rm_con_bottom_c rm_contain">
        <div class="fhyx_rm_con_bottom_img">
          <img width="210" height="100" src="https://img.fhyx.com//uploads//2020//07//02//2020070211754981.jpg" >
        </div>
        <div class="fhyx_rm_con_bottom_info">
          <div class="fhyx_rm_con_bottom_title">骑马与砍杀2</div>
          <div class="fhyx_rm_con_bottom_etitle">Mount and Blade II: Bannerlord</div>
          <div class="fhyx_rm_con_bottom_detail">
            <div class="fhyx_rm_con_bottom_per">-21%</div>
            <div class="fhyx_rm_con_bottom_price">￥195.00</div>
            <div class="fhyx_rm_con_bottom_btn hk_steam"></div>
          </div>
        </div>
      </a>
      <a href="#" class="fhyx_rm_con_bottom_c rm_contain">
        <div class="fhyx_rm_con_bottom_img">
          <img width="210" height="100" src="https://img.fhyx.com//uploads//2020//06//23//2020062363421750.jpg" >
        </div>
        <div class="fhyx_rm_con_bottom_info">
          <div class="fhyx_rm_con_bottom_title">使命召唤16：现代战争</div>
          <div class="fhyx_rm_con_bottom_etitle">Call of Duty：Modem Warfare</div>
          <div class="fhyx_rm_con_bottom_detail">
            <div class="fhyx_rm_con_bottom_per">-3%</div>
            <div class="fhyx_rm_con_bottom_price">￥426.00</div>
            <div class="fhyx_rm_con_bottom_btn hk_steam"></div>
          </div>
        </div>
      </a>
      <a href="#" class="fhyx_rm_con_bottom_c rm_contain">
        <div class="fhyx_rm_con_bottom_img">
          <img width="210" height="100" src="https://img.fhyx.com//uploads//2020//02//27//2020022721604266.jpg" >
        </div>
        <div class="fhyx_rm_con_bottom_info">
          <div class="fhyx_rm_con_bottom_title">死亡搁浅</div>
          <div class="fhyx_rm_con_bottom_etitle">Death Stranding</div>
          <div class="fhyx_rm_con_bottom_detail">
            <div class="fhyx_rm_con_bottom_per">-20%</div>
            <div class="fhyx_rm_con_bottom_price">￥238.00</div>
            <div class="fhyx_rm_con_bottom_btn hk_steam"></div>
          </div>
        </div>
      </a>
      <a href="#" class="fhyx_rm_con_bottom_c rm_contain">
        <div class="fhyx_rm_con_bottom_img">
          <img width="210" height="100" src="https://img.fhyx.com//uploads//2020//03//30//2020033020504697.jpg" >
        </div>
        <div class="fhyx_rm_con_bottom_info">
          <div class="fhyx_rm_con_bottom_title">妖精的尾巴</div>
          <div class="fhyx_rm_con_bottom_etitle">Fairy Tail</div>
          <div class="fhyx_rm_con_bottom_detail">
            <div class="fhyx_rm_con_bottom_per">-6%</div>
            <div class="fhyx_rm_con_bottom_price">￥329.00</div>
            <div class="fhyx_rm_con_bottom_btn hk_steam"></div>
          </div>
        </div>
      </a>
      <a href="#" class="fhyx_rm_con_bottom_c rm_contain">
        <div class="fhyx_rm_con_bottom_img">
          <img width="210" height="100" src="https://img.fhyx.com//uploads//2019//10//24//2019102451315807.png" >
        </div>
        <div class="fhyx_rm_con_bottom_info">
          <div class="fhyx_rm_con_bottom_title">荒野大嫖客2</div>
          <div class="fhyx_rm_con_bottom_etitle">Red Dead Redemption 2</div>
          <div class="fhyx_rm_con_bottom_detail">
            <div class="fhyx_rm_con_bottom_per">-20%</div>
            <div class="fhyx_rm_con_bottom_price">￥199.00</div>
            <div class="fhyx_rm_con_bottom_btn hk_steam"></div>
          </div>
        </div>
      </a>
    </div>
  </div>
</div>
<!-- 热门精选-end -->

<!-- 置顶-start -->
<div class="fhyx_link" style="display: block;">
  <div class="fhyxhk_link_li fhyx_link_active" id="link_pc">
    <a href="#pc_yx">PC游戏</a>
    <i></i>
  </div>
  <div class="fhyxhk_link_li" id="link_fxs">
    <a href="#fx_tm">发行特卖</a>
    <i></i>
  </div>
  <div class="fhyxhk_link_li" id="link_fd">
    <a href="#fh_fd">凤凰福袋</a>
    <i></i>
  </div>
  <div class="fhyxhk_link_li" id="link_product">
    <a href="#fh_cp">凤凰出品</a>
    <i></i>
  </div>
  <div class="fhyxhk_link_li" id="link_cs">
    <a href="#rm_cs">热门厂商</a>
    <i></i>
  </div>
  <div class="fhyxhk_link_li" id="link_rm">
    <a href="#rm_js">热门精选</a>
    <i></i>
  </div>
  <div class="fhyxhk_link_li" id="link_top">
    <a href="#fh_db">返回顶部</a>
    <i></i>
  </div>
</div>
<!-- 置顶-end -->

<!-- 底部 -->
<div class="fhyxhk_foot">
  <div class="fhyxhk_foot_con">
    <div class="fhyxhk_foot_top">
      <div class="fhyxhk_foot_top_left">
        <div class="fhyxhk_foot_top_list">
          <div class="fhyxhk_foot_top_des">
            <div class="fhyxhk_foot_top_title">关于</div>
            <a href="#" target="_self">关于凤凰</a>
            <a href="#" target="_self">服务条款</a>
            <a href="#" target="_self">会员</a>
            <a href="#" target="_self">积分</a>
            <a href="#" target="_self">优惠券</a>
            <a href="#" target="_self">订单支付</a>
            <a href="#" target="_self">凤凰客户端</a>
            <a href="#" target="_self">凤凰App</a>
          </div>
        </div>
        <div class="fhyxhk_foot_top_list">
          <div class="fhyxhk_foot_top_des">
            <div class="fhyxhk_foot_top_title">支付方式</div>
            <a href="#" target="_self">支付宝</a>
            <a href="#" target="_self">微信</a>
            <a href="#" target="_self">网银</a>
          </div>
          <div class="fhyxhk_foot_top_des" style="margin-top:35px;">
            <div class="fhyxhk_foot_top_title">实体配送</div>
            <a href="#" target="_self">顺丰</a>
            <a href="#" target="_self">EMS</a>
            <a href="#" target="_self">圆通</a>
          </div>
        </div>
        <div class="fhyxhk_foot_top_list">
          <div class="fhyxhk_foot_top_des">
            <div class="fhyxhk_foot_top_title">售后服务</div>
            <a href="#" target="_self">退款政策</a>
            <a href="#" target="_self">换货政策</a>
          </div>
          <div class="fhyxhk_foot_top_des" style="margin-top:64px;">
            <div class="fhyxhk_foot_top_title">虚拟发货</div>
            <a href="#" target="_self">CDkey领取</a>
            <a href="#" target="_self">Steam代购</a>
            <a href="#" target="_self">匿名领取</a>
          </div>
        </div>
      </div>
      <div class="fhyxhk_foot_top_right">
        <div class="fhyxhk_foot_top_er">
          <div class="fhyxhk_foot_top_tg">
            <div class="tg_title">凤凰游戏APP</div>
            <div class="tg_img"><img id="imgid" src="https://static.fhyx.com/images/application/pc/hk/fhyx_app.jpg" width="100" height="100"/></div>
          </div>
          <div class="fhyxhk_foot_top_tg" style="margin-right:0px;">
            <div class="tg_title">微信公众号</div>
            <div class="tg_img"><img src="https://static.fhyx.com/images/application/pc/hk/wxgzh.jpg" width="100" height="100"/></div>
          </div>
        </div>
        <span class="fhyxhk_foot_box_title">凤凰客户端</span>
      </div>
    </div>
    <div class="fhyxhk_foot_center">
      <div class="fhyxhk_foot_center_l">
        <div class="fhyxhk_foot_center_kf">
          <div class="kf_title">客服中心</div>
          <span>客服在线时间：09:00 - 21:00</span>
          <span><label>客服QQ：</label><img src="https://static.fhyx.com/images/application/pc/com/qq.jpg" width="74" height="24" id="p_qykf_1"/></span>
          <span>客服电话：400-072-2815</span>
        </div>
        <div class="fhyxhk_foot_center_btn">
          <div class="btn_title">分享</div>
          <div class="btn_con">
            <a href="https://weibo.com/u/5733092469" target="_self"><img src="https://static.fhyx.com/images/application/pc/com/wb_logo.jpg" width="104" height="42"/></a>
          </div>
        </div>
      </div>
      <div class="fhyxhk_foot_center_r">
        <a class="fhyxhk_foot_box" href="/zt/box/" target="_self">
          <img src="https://static.fhyx.com/images/application/pc/com/fhyx_boxdown.png" width="14" height="16">
          <em>PC版下载</em>
        </a>
        <div class="fhyxhk_foot_douyin">
          <div class="fhyxhk_foot_douyin_t">凤凰官方抖音</div>
          <div class="fhyxhk_foot_douyin_img"><img src="https://static.fhyx.com/images/application/pc/com/fhyx_douyin.png" width="108" height="108"/></div>
        </div>
        <div class="fhyxhk_foot_center_rl">
          <div class="rl_title">加入我们</div>
          <a href="http://co.fhyx.com" target="_self">商务合作</a>
        </div>
      </div>
    </div>
    <div class="fhyxhk_foot_bottom">
      <div class="fhyxhk_foot_b">凤凰传媒(SH601928)旗下网站 ：凤凰游戏</div>
      <div class="fhyxhk_foot_b">CopyRight © 2011-2020 fhyx.com 杭州凤侠网络科技有限公司 All Right Reserved <a href="http://www.beian.miit.gov.cn" target="_self" style="color:#9eafc3;">浙ICP备12018679号-9</a></div>
    </div>
  </div>
</div>
</body>
</html>
