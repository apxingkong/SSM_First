<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/26
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="https://i.postimg.cc/28ByBG6h/logo1ico.png" type="image/x-icon"/>
    <title>狙击手：幽灵战士2-正版购买-凤凰游戏_FHYX.hk</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fh_detail4.css">
    <script src="${pageContext.request.contextPath}/static/js/fh_index_car.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/fh_detail4.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap-grid.min.css" />
    <link rel="stylesheet" href="http://jrain.oscitas.netdna-cdn.com/tutorial/css/fontawesome-all.min.css">
</head>
<body>
<div class="fhyxhk_header_global">
    <div class="fhyxhk_header">
        <!-- logo -->
        <div class="fhyxhk_header_left">
            <a href="#" class="fhyxhk_header_logo">
                <img src="https://i.loli.net/2020/07/26/VGgNH9tFrdxwOlp.png" style="width: 260px;"/>
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
                    <a href="#;" class="fhyxhk_header_car">
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
                                    <a href="#;" class="fhyxhk_header_tocar">前往购物车</a>
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
                    <a href="#" id="login_btn">登录</a>
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
<!-- 产品介绍 -->
<div class="detail_bg" style="background-image: url(https://static.fhyx.com/images/application/pc/hk/detail_top_bg.jpg);">
</div>
<div class="detail_top">
    <div class="detail_top_l">
        <p class="p_name">狙击手：幽灵战士2</p>
        <p class="p_ett">
            <label>Sniper: Ghost Warrior 2</label>
            <span>|</span>
            2013.03.12上市
            <span>|</span>
            <a href="#">第一人称射击FPS</a>
            <span>|</span>
            支持中文
        </p>
    </div>
    <div class="detail_top_r">
        <span class="detail_collection" id="content_shoucang_button">收藏 <i class="detail_ico"></i></span>
    </div>
    <div class="detail_top_t">
        <div class="detail_top_t_l">
            <div class="down_detail_top_left_top">
                <div class="down_detail_top_left_top_con">
                    <video id="video" muted="true" poster="https://img.fhyx.com/uploads/steam/mpic/34870.jpg" playsinline webkit-playsinline data-setup="{}" controls preload="auto" style="width:688px;height:386px;">
                        <source src="https://media.st.dl.pinyuncloud.com/steam/apps/2028443/movie_max.mp4?t=1447357594" type="video/mp4">
                    </video>
                    <img src="https://img.fhyx.com/uploads/steam/34870/0.jpg" class=""/>
                    <img src="https://img.fhyx.com/uploads/steam/34870/1.jpg" class=""/>
                    <img src="https://img.fhyx.com/uploads/steam/34870/2.jpg" class=""/>
                    <img src="https://img.fhyx.com/uploads/steam/34870/3.jpg" class=""/>
                </div>
            </div>
            <div class="down_detail_top_left_bottom" id="down_detail_top_left_bottom">
                <ul>
                    <li>
                        <span class="down_hover" ></span>
                        <img src="https://img.fhyx.com/uploads/steam/mpic/34870.jpg" width="116" height="65" />
                        <em class="em_active"></em>
                    </li>
                    <li>
                        <span class="" ></span>
                        <img src="https://img.fhyx.com/uploads/steam/34870/0.jpg" width="116" height="65" />
                        <em class=""></em>
                    </li><li>
                    <span class="" ></span>
                    <img src="https://img.fhyx.com/uploads/steam/34870/1.jpg" width="116" height="65" />
                    <em class=""></em>
                </li><li>
                    <span class="" ></span>
                    <img src="https://img.fhyx.com/uploads/steam/34870/2.jpg" width="116" height="65" />
                    <em class=""></em>
                </li><li>
                    <span class="" ></span>
                    <img src="https://img.fhyx.com/uploads/steam/34870/3.jpg" width="116" height="65" />
                    <em class=""></em>
                </li>
                </ul>
            </div>
            <div class="down_detail_top_left_scroll">
                <div class="down_detail_top_left_scroll_left" >
                    <span></span>
                </div>
                <div class="down_detail_top_left_scroll_cenetr">
                    <span id="clear_scroll"></span>
                    <div class="down_detail_top_left_scroll_cenetr_con" ></div>
                </div>
                <div class="down_detail_top_left_scroll_right" >
                    <span></span>
                </div>
            </div>
        </div>

        <div class="detail_top_t_r">
            <div class="fortune"><a href="#" target="_blank"><img src="https://simg9.bigurl.ink/e399f74313e521a3ceca6d9bebf631b7.jpg?x-oss-process=style/pc_680_webp"></a></div>
            <img class="w_img" src="https://img.fhyx.com/uploads/steam/w_img/34870.jpg">
            <div class="detail_p_con_r">
                <div>
                    <p>Sniper: Ghost Warrior 2</p>
                    <p>使用平台：Steam，仅适用于中国大陆地区使用。</p>
                </div>
            </div>
            <div class="detail_top_t_r_scroll mCustomScrollbar">
                <div class="p_pid">
                    <span class="title">平台:</span>
                    <div class="p_pid_ul">
                        <a href="#" class="detail_ico hk_steam active"></a>
                    </div>
                </div>
                <div id="p_version">
                    <div class="p_version">
                        <span class="title">数字版：</span>
                        <div class="p_version_ul">
                            <a href="#" class="active">大陆版key</a><a href="#" class="">大陆版key(高级版)</a>
                        </div>
                    </div><div class="p_version">
                    <span class="title">成品账号：</span>
                    <div class="p_version_ul">
                        <a href="#" class=""> 幽灵战士号</a>
                    </div>
                </div>
                </div>
            </div>
            <div class="detail_p_con">
                <span class="price">¥40.00</span><span class="old_price">¥50.00</span><span class="zk">-20%</span><span class="yus" style="display:none;">预售</span>
            </div>
            <div class="hk_dollar">
                HK$ 66.66
            </div>

            <div class="buy_car">
                <a href="#" class="detail_ico buy">立即购买</a>
                <a href="#" class="addcar" >加入购物车</a>
            </div>
        </div>
    </div>
</div>
<!-- top end -->
<div class="detail_content">
    <div class="maker_tj">
        <div class="maker_tj_title">
            <span>Xbox Game Studios 还有更多游戏 :</span>
            <a href="#">更多 +</a>
        </div>
        <div class="maker_tj_ul">
            <a class="maker_tj_li" href="#">
                <img src="https://img.fhyx.com/uploads/steam/w_img/256190.jpg" alt=""/>
                <p>敌军前线</p>
            </a>
            <a class="maker_tj_li" href="#">
                <img src="https://img.fhyx.com/uploads/steam/w_img/836770.jpg" alt=""/>
                <p>Grounded</p>
            </a>
            <a class="maker_tj_li" href="#">
                <img src="https://img.fhyx.com/uploads/steam/w_img/34830.jpg" alt=""/>
                <p>谋杀的艺术命运关卡</p>
            </a>
            <a class="maker_tj_li" href="#">
                <img src="https://img.fhyx.com/uploads/steam/w_img/368070.jpg" alt=""/>
                <p>狙击手幽灵战士</p>
            </a>
            <a class="maker_tj_li" href="#">
                <img src="https://img.fhyx.com/uploads/steam/w_img/832540.jpg" alt=""/>
                <p>谋杀的艺术2追捕木偶人</p>
            </a>
        </div>
    </div>
    <div class="detail_content_l">
        <!-- 套餐 -->
        <div class="p_taocan">
            <span class="taocanbj_one"></span>
            <span class="taocanbj_two"></span>
            <span class="taocanbj_three"></span>
            <a class="taocan_con" href="#">
                <div class="taocan_con_l">
                    <p class="name">狙击手幽灵战士 物品key合辑</p>
                    <p class="baohan"><span>包含 4 件物品：</span>狙击手幽灵战士 PC版 武器Key / 狙击手幽灵战士 PC版 飞行员Key / 狙击手幽灵战士 PC版 饰品Key / 狙击手幽灵战士 PC版 警官Key / </p>
                </div>
                <div class="taocan_con_r">
                    <div class="taocan_con_r_l">
                        <span class="tc_price">¥65.00</span>
                        <span class="tc_old_price">¥68.00</span>
                        <span class="tc_zk">-4%</span>
                        <div class="tc_buy">购买套餐</div>
                    </div>
                    <img src="https://img.fhyx.com/uploads/2020/05/12/2020051243641691.jpg" />
                </div>
            </a>
        </div>
        <div class="p_taocan">
            <span class="taocanbj_one"></span>
            <span class="taocanbj_two"></span>
            <span class="taocanbj_three"></span>
            <a class="taocan_con" href="#">
                <div class="taocan_con_l">
                    <p class="name">狙击手幽灵战士  全新版本</p>
                    <p class="baohan"><span>包含 3 件物品：</span>狙击手幽灵战士 PC版 大陆版key / 狙击手幽灵战士 PC版 经验卡 50级 / 狙击手幽灵战士 PC版 生存通行证：寒锋 / </p>
                </div>
                <div class="taocan_con_r">
                    <div class="taocan_con_r_l">
                        <span class="tc_price">¥345.00</span>
                        <span class="tc_old_price">¥386.00</span>
                        <span class="tc_zk">-11%</span>
                        <div class="tc_buy">购买套餐</div>
                    </div>
                    <img src="https://img.fhyx.com/uploads/2020/04/23/2020042340413640.jpg" />
                </div>
            </a>
        </div>
        <!-- 版本介绍 -->
        <div class="products_js">
            <span class="products_js_title">版本介绍</span>
            <div class="products_js_content">
                <p>Sniper: Ghost Warrior 2 Collector&#39;s Edition<br />
                    包含 2 件物品：<br />
                    SNIPER: GHOST WARRIOR 2 <br />
                    Sniper Ghost Warrior 2: Digital Extras
                </p>

            </div>
            <div class="products_js_more"><span class="detail_ico"></span></div>
        </div>
        <!-- 游戏介绍 -->
        <div class="game_js">
            <span class="game_js_title">游戏介绍</span>
            <div class="game_js_content">
                <p>《狙击手：幽灵战士2》将包含新的弹道物理学技术，玩家位置、风速、方向、呼吸频率、与目标的距离都会对射击产生影响。此外，
                    在可见度有限的场景中，玩家将可以使用夜视仪和热辐射仪探测目标。</p>
                <p>玩家将继续扮演Cody Anderson上尉，在《幽灵战士2》他将是一名退役的三角洲部队狙击手。游戏中将带有著名作家联袂打造的
                    宏大故事。《幽灵战士2》使用的是CryEngine 3引擎，很可能它将是一部与《孤岛危机2》画面水平相当的作品。</p>
                <p>&nbsp;</p>
            </div>
            <div class="game_js_more"><span class="detail_ico"></span></div>
        </div>
        <!-- 配置信息 -->
        <div class="detail_config">
            <span class="detail_config_title">系统需求</span>
            <div class="detail_config_con">
                <div class="detail_config_child">
                    <div class="detail_config_ctitle">推荐配置</div>
                    <p><label>操作系统：</label>Windows 7</p>
                    <p><label>处理器：</label>Core 2 Duo 2.0GHz / Athlon 64 X2 2.6GHz</p>
                    <p><label>内存：</label>2GB</p>
                    <p><label>显卡：</label>Nvidia 8800 GT / AMD HD 3850 (DirectX9.0及ShaderModel3.0)</p>
                    <p><label>存储空间：</label>8GB</p>
                </div>
                <div class="detail_config_line"></div>
                <div class="detail_config_child">
                    <div class="detail_config_ctitle">最低配置</div>
                    <p><label>操作系统：</label>Windows 7</p>
                    <p><label>处理器：</label>Intel Core 2 Duo at 2Ghz, or AMD Athlon 64 x2 2Ghz, or better</p>
                    <p><label>内存：</label>2GB</p>
                    <p><label>显卡：</label> GeForce 8800GT</p>
                    <p><label>存储空间：</label>8GB</p>
                </div>
            </div>
        </div>

        <!-- 相关公告 -->
        <div class="detail_gg">
            <span class="detail_gg_title">相关公告</span>
            <ul class="detail_gg_content" style="height:auto;">
                <li class="item_xl" data-id="11">
                    <i class="detail_ico wt_gg"></i>
                    <a href="#" title="绝地求生--辅助推荐配置">狙击手：幽灵战士2--辅助推荐配置</a>
                    <span>2013/03/12 14:24:18</span>
                </li>
            </ul>
        </div>
        <!-- 热门推荐 -->
        <div class="game_rmtj">
            <span class="game_rmtj_title">更多类似产品</span>
            <a class="game_rmtj_more" href="#" target="_blank">更多<i class="detail_ico"></i></a>
            <div class="game_rmtj_con">
                <a href="https://www.fhyx.hk/item/2496.html" target="_blank" title="只狼：影逝二度">
                    <img src="https://img.fhyx.com/uploads/steam/w_img/2020/04/10/2020041014447466.jpg" />
                    <p>只狼：影逝二度</p>
                </a>
                <a href="https://www.fhyx.hk/item/3968.html" target="_blank" title="精灵与萤火意志">
                    <img src="https://img.fhyx.com/uploads/steam/w_img/578080.jpg" />
                    <p>绝地求生大逃杀</p>
                </a>
                <a href="https://www.fhyx.hk/item/2655.html" target="_blank" title="嗜血印">
                    <img src="https://img.fhyx.com/uploads/steam/w_img/992300.jpg" />
                    <p>嗜血印</p>
                </a>
                <a href="https://www.fhyx.hk/item/1160.html" target="_blank" title="失落城堡">
                    <img src="https://img.fhyx.com/uploads/steam/w_img/434650.jpg" />
                    <p>失落城堡</p>
                </a>
                <a href="https://www.fhyx.hk/item/2142.html" target="_blank" title="怪物猎人世界">
                    <img src="https://img.fhyx.com/uploads/steam/w_img/582010.jpg" />
                    <p>怪物猎人世界</p>
                </a>
                <a href="https://www.fhyx.hk/item/2519.html" target="_blank" title="鬼泣5">
                    <img src="https://img.fhyx.com/uploads/steam/w_img/601150.jpg" />
                    <p>鬼泣5</p>
                </a>
            </div>
        </div>
    </div>
    <!-- 主体右侧部分 -->
    <div class="detail_content_r">
        <div class="right_contcent">
            <div class="top_background"></div>

            <div class="changshang">
                <p class="fxs">开发商：<a href="#">City Interactive</a></p>
                <p class="fxs">发行商：<a href="#">Sniper Ghost Warrior</a></p>
                <i></i>
            </div>
            <div class="tag">
                <span class="title">游戏类型</span>
                <div class="tag_con">
                    <a href="#">冒险</a>
                    <a href="#">动作</a>
                    <a href="#">大型多人游戏</a>
                </div>
                <i></i>
            </div>
            <div class="sh_time">
                <p><span>上市时间：</span>2013/03/12</p>
                <i></i>
                <div class="modlist">
                    <div class="modlist_li">
                        <label><img src="https://img.fhyx.com/uploads/2019/09/10/2019091034305593.png"></label>
                        <em>多人</em>
                    </div>
                    <div class="modlist_li">
                        <label><img src="https://img.fhyx.com/uploads/2019/09/10/201909103433670.png" width="30px"></label>
                        <em>steam成就</em>
                    </div>
                    <div class="modlist_li">
                        <label><img src="https://img.fhyx.com/uploads/2019/09/10/2019091034315433.png"></label>
                        <em>完全支持控制器</em>
                    </div>
                </div>
                <i></i>
                <div class="detail_rate">
                    <a href="#">
                        <img src="https://img.fhyx.com/uploads/rateimg/578080/esrb_t.gif">
                    </a>
                </div>
            </div>
            <div class="params">
                <div class="DRM_notice">
                    <div>需要同意一份来自第三方的最终用户许可协议</div>
                    <div>PLAYERUNKNOWN'S BATTLEGROUNDS  EULA</div>
                </div>
            </div>
            <div class="language_con">
                <div class="language">
                    <table class="language_options" cellpadding="0" cellspacing="0">
                        <tbody>
                        <tr>
                            <th class="checkcol">语言:</th>
                            <th class="checkcol">界面</th>
                            <th class="checkcol">完全音频</th>
                        </tr>
                        <tr>
                            <td class="ellipsis">简体中文</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">英语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">日语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">繁体中文</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">韩语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">法语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">德语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">西班牙语 - 西班牙</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">阿拉伯语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">波兰语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">葡萄牙语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">俄语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">土耳其语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">泰语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">意大利语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">葡萄牙语 - 巴西</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        <tr>
                            <td class="ellipsis">乌克兰语</td>
                            <td class="checkcol"><span class="detail_ico checked"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                            <td class="checkcol"><span class="detail_ico"></span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="language_more">
                    <span class="detail_ico"></span>
                </div>
            </div>
        </div>
        <!-- 广告 -->
        <div class="detail_ggtj">
            <div class="box">
                <img src="https://img.fhyx.com//uploads//2020//07//10//20200710101450760.jpg" title="育碧大促">
                <div class="box-content">
                    <h3 class="title">XKGAME.COM</h3>
                    <span class="post">Play together</span>
                    <ul class="icon">
                        <li><a href="#"><i class="fa fa-search"></i></a></li>
                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="box">
                <img src="https://img.fhyx.com//uploads//2020//07//08//2020070835227154.jpg" title="育碧大促">
                <div class="box-content">
                    <h3 class="title">XKGAME.COM</h3>
                    <span class="post">Play together</span>
                    <ul class="icon">
                        <li><a href="#"><i class="fa fa-search"></i></a></li>
                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="box">
                <img src="https://img.fhyx.com//uploads//2020//06//16//2020061630512805.jpg" title="育碧大促">
                <div class="box-content">
                    <h3 class="title">XKGAME.COM</h3>
                    <span class="post">Play together</span>
                    <ul class="icon">
                        <li><a href="#"><i class="fa fa-search"></i></a></li>
                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>








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
                        <div class="tg_img"><img src="//static.fhyx.com/images/application/pc/hk/fhyx_app.jpg" width="100" height="100"/></div>
                    </div>
                    <div class="fhyxhk_foot_top_tg" style="margin-right:0px;">
                        <div class="tg_title">微信公众号</div>
                        <div class="tg_img"><img src="//static.fhyx.com/images/application/pc/hk/wxgzh.jpg" width="100" height="100"/></div>
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
                    <span><label>客服QQ：</label><img src="//static.fhyx.com/images/application/pc/com/qq.jpg" width="74" height="24" id="p_qykf_1"/></span>
                    <span>客服电话：400-072-2815</span>
                </div>
                <div class="fhyxhk_foot_center_btn">
                    <div class="btn_title">分享</div>
                    <div class="btn_con">
                        <a href="https://weibo.com/u/5733092469" target="_self"><img src="//static.fhyx.com/images/application/pc/com/wb_logo.jpg" width="104" height="42"/></a>
                    </div>
                </div>
            </div>
            <div class="fhyxhk_foot_center_r">
                <a class="fhyxhk_foot_box" href="/zt/box/" target="_self">
                    <img src="//static.fhyx.com/images/application/pc/com/fhyx_boxdown.png" width="14" height="16">
                    <em>PC版下载</em>
                </a>
                <div class="fhyxhk_foot_douyin">
                    <div class="fhyxhk_foot_douyin_t">凤凰官方抖音</div>
                    <div class="fhyxhk_foot_douyin_img"><img src="//static.fhyx.com/images/application/pc/com/fhyx_douyin.png" width="108" height="108"/></div>
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
