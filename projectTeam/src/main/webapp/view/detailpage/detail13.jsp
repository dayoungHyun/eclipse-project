<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="No-Cache">
    <meta http-equiv="imagetoolbar" content="no">
    <meta name="viewport" content="width=1024">
    <link rel="alternate" href="http://m.cgv.co.kr">
    <title id="ctl00_ctl00_headerTitle">KIC MOVIE THEATER &lt; My KIC | 영화 그 이상의 감동, KIC</title>
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css">
    <style>
    #cgvwrap .cgv-ad-wrap .sect-head-ad,
.head, .im-wrap, 
#contents, 
.foot, 
.sect-smuse, 
.sect-cinfo {position:relative; width:980px; margin:0 auto;}
.head h1, .sect-srh, .sect-booking,.sect-phototicket {position:absolute; z-index:1;}
.cf:before,.cf:after                                                    {content: " "; /* 1 */display: table; /* 2 */}
.cf:after                                                               {clear: both;}
.cf                                                                     

/* Background */
.sect-service .util li > a, 
.sect-service .gnb li > a, 
.lnb > ul > li > a, 
.sect-service a.showtimes, 
.sect-booking > a, 
.sect-phototicket > a, 
.sect-person li > a, 
.line-v, 
.line-dot, 
.sect-smuse li > a, 
.sect-cinfo .share a, 
.sect-cinfo .logo {overflow:hidden; background-image:url(https://img.cgv.co.kr/r2014/images/sprite/common_sprite_area_v4_2016.png); background-repeat:no-repeat; text-indent:100%; white-space:nowrap;}
.lnb h2, 
.sect-smuse h2, 
.sect-cinfo h2 {font:0px/0 a; visibility:hidden;}
.sect-service h2, 
.im-wrap .lnb > ul > li > a, 
.sect-srh h2, 
.sect-booking h2, 
.sect-booking > a, 
.sect-phototicket h2, 
.sect-phototicket > a, 
.sect-person h2 {font:0px/0 a;}

/* Display:block */
.sect-service > .util li > a, .sect-service > .gnb li > a, .sect-service a.showtimes, .im-wrap .lnb > ul > li > a, .im-wrap > h2 > a, .im-wrap .ad-partner > a,
.sect-booking > a,.sect-phototicket > a, .sect-person li > a, .sect-common li > a, .ciols-movie li > a, .sect-smuse li > a, .policy li a, .sect-cinfo .share a, .sect-bcrumb li > a,
.sect-ad-external > a, .cols-banner .col-hd > a, .sect-showtimes .info-timetable a, .sect-aside-banner .aside-content-btm > a, .sect-aside-banner > .btn-top > a {display:block;}

#cgvwrap {position:relative; width:100%;min-width:1040px}
#cgvwrap #header {background:#fdfcf0 url(https://img.cgv.co.kr/r2014/images/common/bg/bg_header.gif) repeat-x 0 0;} /* 20140620 DanielKim Del height:255px; padding-top:80px; background-position:0 80px; */
#cgvwrap #header > .head {position:relative; z-index:100;}
#cgvwrap #header > .head h1 {top:40px; left:0; width:223px; height:85px; padding:18px 0 0 22px; z-index:110;}
#cgvwrap #header > .head h1 > a {display:block;}

/* S Common */
.fixedBtn_wrap{display:flex; justify-content:flex-end; position:fixed; right:0; bottom:80px; min-height:50px; margin-left:440px; text-align:center; z-index:7}
.fixedBtn_wrap .btn_fixedTicketing{position:absolute; left:auto; right:0px; width:136px; padding:12px 0 14px; font-weight:500; font-size:16px; color:#fff; line-height:1.500em; background-image:linear-gradient(to left, rgb(255, 115, 86), rgb(251, 67, 87)); box-shadow:1px 3px 6px 0 rgba(0, 0, 0, 0.3); border-radius:25px; transition:right 0.4s; opacity:0; pointer-events:none}
.fixedBtn_wrap .btn_gotoTop{display:flex; align-items:center; justify-content:center; position:relative; right:0; width:48px; height:48px; background-color:#fff; border:1px solid #000; box-shadow:1px 3px 6px 0 rgba(0, 0, 0, 0.3); border-radius:50%; opacity:0; pointer-events:none; ; transition:opacity 0.2s}
.fixedBtn_wrap .btn_gotoTop img{width:15px; height:21px}

.fixedBtn_wrap.topBtn .btn_gotoTop{opacity:1; pointer-events:auto; transition:opacity 0.4s}
.fixedBtn_wrap.topBtn .btn_fixedTicketing{right:58px; opacity:1; pointer-events:auto}

@media only screen and (min-width: 1116px) {
	.fixedBtn_wrap{right:50%; margin-right:-548px}
}

/* S > ICON */
.cgvIcon img{width:100%}
.cgvIcon.return{width:15px; height:13px}
.cgvIcon.home{width:17px; height:18px}
.cgvIcon.arrow_6x10{width:6px; height:10px}


/* S > 서버오류 */
/* .error_wrap{} */
.error_wrap .error_server{display:block; width:113px; height:101px; margin:149px auto 0}
.error_wrap .error_server img{width:100%}
.error_wrap .error_comment{display:block; margin-top:30px; font-weight:500; font-size:22px; color:#222; letter-spacing:-0.036em; line-height:1.455em; text-align:center}
.error_wrap .error_comment1{margin-top:10px; font-size:15px; color:#444; line-height:1.333em; text-align:center}
.error_wrap .btn_wrap{align-items:center; justify-content:center}
.error_wrap .btn_wrap .btn_inner_wrap{width:100%; padding:26px 0 35px; text-align:center}
.error_wrap .btn_wrap .btn_inner_wrap .btn_errorStyle{min-width:120px; padding:6px 0 7px; font-size:14px; color:#222; line-height:1.429em; border:1px solid #e1e1e1; border-radius:20px}
.error_wrap .btn_wrap .btn_inner_wrap .btn_errorStyle .return{margin-top:3px; margin-right:10px}
.error_wrap .btn_wrap .btn_inner_wrap .btn_errorStyle .home{margin-right:9px}
.error_wrap .btn_wrap .btn_innerB_wrap{display:block; width:100%; padding:22px 0 128px; font-size:14px; color:#444; line-height:1.429em; border-top:1px solid #d8d8d8; text-align:center}
.error_wrap .btn_wrap .btn_innerB_wrap .btn_errorStyle.full{margin-left:19px; padding:0 10px; color:#444; border:1px solid #d7d7d7; border-radius:5px}
.error_wrap .btn_wrap .btn_innerB_wrap .btn_errorStyle.full .arrow_6x10{margin-top:5px; margin-left:4px; vertical-align:top}




/* E Common */

/* S Header */
	.header{position:relative; z-index:101}
	.header .contents{width:980px; margin:0 auto}
		.header_content{margin-bottom:50px; background-color:#fff; border-bottom:1px solid #eee}
		.header_content .contents{display:flex; justify-content:space-between; padding:30px 6px 25px 5px; background-color:#fff}
		.header_content .contents h1{display:inline-flex; align-items:flex-end; height:53px}
		.header_content .contents h1 a{display:block; float:left; height:100%}
		.header_content .contents h1 a img{display:block; width:auto; height:100%; object-fit:contain}
		.header_content .contents h1 span{font-weight:300; font-size:16px; color:#222; letter-spacing:0.313em; line-height:1.500em}
		.header_content .contents .memberInfo_wrap{display:flex; align-items:center}
		.header_content .contents .memberInfo_wrap li{margin-left:44px; margin-top:2px}
		.header_content .contents .memberInfo_wrap li:first-child{margin-left:0}
		.header_content .contents .memberInfo_wrap li a{display:block; position:relative; padding-bottom:19px}
		.header_content .contents .memberInfo_wrap li a img{width:36px; height:36px}
		.header_content .contents .memberInfo_wrap li a span{position:absolute; bottom:0; left:50%; font-size:13px; color:#666; line-height:1.462em; white-space:nowrap; transform:translate(-50%, 0)}
		.header_content .contents .memberInfo_wrap li.ad_partner{width:136px; height:39px; margin-top:5px}
		.header_content .contents .memberInfo_wrap li.ad_partner + li{margin-left:34px}
		.header_content .contents .memberInfo_wrap li.ad_partner a{width:100%; height:100%; padding-bottom:0}
		.header_content .contents .memberInfo_wrap li.ad_partner a img{width:100%; height:100%}

/* S > GNB
	Description
	- class 'nav' 에 class 'active' 추가시 서브메뉴노출
	- class 'nav' 에 class 'fixed' 추가시 상단고정되며 스타일 변경됨
 */
		.nav{position:absolute; left:0; top:113px; width:100%; padding:5px 0; background-color:#fff}
		.nav:after{content:''; display:block; position:absolute; left:0; top:49px; width:100%; height:2px; background-color:#fb4357}
		.nav:before{content:''; display:block; position:absolute; left:0; bottom:0; width:100%; height:1px; background-color:#a58e8e}
		.nav .contents{position:relative}
		.nav .contents h1{display:none}
			.nav_menu{display:inline-flex}
			.nav_menu > li{width:162px; padding:20px 0}
			.nav_menu > li:first-child{width:137px;}
			.nav_menu > li:first-child .nav_overMenu{padding-left:0}
			.nav_menu > li:first-child .nav_overMenu:before{content:none}
			.nav_menu > li:last-child{width:195px}
			.nav_menu > li:nth-child(2) > h2{left:80px}
			.nav_menu > li:nth-child(3) > h2{left:160px}
			.nav_menu > li:nth-child(4) > h2{left:240px}
			.nav_menu > li:nth-child(5) > h2{left:335px}
			.nav_menu > li:last-child > h2{left:430px}

			.nav_menu > li > h2{position:absolute; top:7px}
			.nav_menu > li > h2 > a{font-weight:500; font-size:16px; color:#222; line-height:1.500em}
			/* .nav_menu > li > h2 > a:hover{text-decoration:underline} */
			.nav_menu > li > h2 > a strong{font-weight:700; color:#fb4357}
				.nav_overMenu{display:none; position:relative; margin-bottom:8px; padding:25px 0 0 25px}
				.nav_overMenu:before{content:''; position:absolute; left:0; top:45px; display:block; width:1px; height:250px; background-color:#eee; opacity:0.8}
				.nav_overMenu h3{height:auto; margin:0; line-height:1em; text-align:left; background-image:none}
				.nav_overMenu a:hover{text-decoration:underline}
				.nav_overMenu dt{padding-top:18px}
				.nav_overMenu dt a{font-weight:700; font-size:14px; color:#222; line-height:1.429em}
				.nav_overMenu dt + dd{margin-top:8px}
				.nav_overMenu dd a{font-weight:400; font-size:14px; color:#666; line-height:2.143em}
				.nav_overMenu dd a.arrowR:after{content:''; display:inline-flex; align-self:center; width:5px; height:9px; margin-left:4px; background:transparent url('./../images/common/ico/arrowR_5x9.png') center/5px 9px scroll no-repeat}

			.totalSearch_wrap{display:inline-flex; position:absolute; right:0; top:7px; padding:0 36px 0 10px}
			.totalSearch_wrap:before{content:''; position:absolute; left:0; top:2px; width:1px; height:20px; background-color:#cacaca}
			.totalSearch_wrap:after{content:''; position:absolute; right:0; top:2px; width:1px; height:20px; background-color:#cacaca}
			.totalSearch_wrap label{display:block}
			.totalSearch_wrap label input[type="text"]{width:180px; height:auto; padding:0 0 0 7px; font-size:16px; color:#222; line-height:1.500em; border:none}
			.totalSearch_wrap .btn_totalSearch{display:block; position:absolute; right:10px; top:-1px; ; width:26px; height:26px; font-size:0; line-height:0; background:transparent url('./../images/common/ico/search.png') center center/26px scroll no-repeat}

			.totalSearch_wrap.active .totalSearchAutocomplete_wrap{display:block}

			

			.totalSearchAutocomplete_wrap{display:none; position:absolute; left:0; top:43px; width:100%; min-width:238px; background-color:#fff; border:1px solid #e1e1e1; border-radius:5px; box-shadow:0 2px 9px 0 rgba(0, 0, 0, 0.1)}
				.totalSearchAutocomplete_list{padding:16px 22px; border-bottom:1px solid #f4f4f4}
				.totalSearchAutocomplete_list dt{font-weight:500; font-size:16px; color:#222; line-height:1.500em}
				.totalSearchAutocomplete_list dt + dd{margin-top:5px}
				.totalSearchAutocomplete_list dd a{font-size:14px; color:#222; line-height:2.214em}
				.totalSearchAutocomplete_list dd a strong{font-weight:400; color:#fb4357}

				.btn_totalSearchAutocomplete_close{float:right; margin:4px 13px 9px; padding-right:15px; font-size:12px; color:#666; line-height:1.417em; background:transparent url('./../images/common/btn/autocompleteClose.png') right center/11px scroll no-repeat}

		.nav.active .nav_overMenu{display:block}

		.nav.fixed{position:fixed; top:0px; min-width:1040px; padding:10px 0}
		.nav.fixed:after{top:0; bottom:auto; height:60px; background-image:linear-gradient(to right, rgb(215, 67, 87), rgb(241,79,58) 59%, rgb(239, 100, 47)); z-index:1}
		.nav.fixed .contents{z-index:2}
		.nav.fixed .contents h1{display:block; position:absolute; left:0; top:1px; width:70px; height:32px; z-index:3}
		.nav.fixed .contents h1 a{display:block} 
		.nav.fixed .contents h1 a img{width:100%; height:100%}
		.nav.fixed .contents .nav_menu > li:first-child > h2{left:120px}
		.nav.fixed .contents .nav_menu > li:nth-child(2) > h2{left:200px}
		.nav.fixed .contents .nav_menu > li:nth-child(3) > h2{left:280px}
		.nav.fixed .contents .nav_menu > li:nth-child(4) > h2{left:360px}
		.nav.fixed .contents .nav_menu > li:nth-child(5) > h2{left:455px}
		.nav.fixed .contents .nav_menu > li:last-child > h2{left:550px}
		.nav.fixed .contents .nav_menu > li > h2 > a{color:#fff}
		.nav.fixed .contents .nav_menu > li > h2 > a strong{color:#fff}
		.nav.fixed .contents .totalSearch_wrap:before,
		.nav.fixed .contents .totalSearch_wrap:after{background-color:#000; opacity:0.2}
		.nav.fixed .contents .totalSearch_wrap label input[type="text"]{color:#fff; background-color:transparent}
		.nav.fixed .contents .totalSearch_wrap .btn_totalSearch{background:transparent url('./../images/common/ico/search_w.png') center center/26px scroll no-repeat}
		.nav.fixed .contents .totalSearchAutocomplete_wrap{position:absolute; left:0; top:49px}
/* E Header */

/* Header AD Area */
#cgvwrap .cgv-ad-wrap {width:100%; height:80px; z-index:101} /* 20140620 position:absolute; top:0; left:0; Del */
#cgvwrap .cgv-ad-wrap .sect-head-ad {width:100%; height:80px; margin:0 auto; text-align:center;}
.sect_txt_banner {height:80px;background:#fefcef}
.sect_txt_banner iframe,.sect_txt_banner .inner {display:block;width:980px;height:80px;margin:0 auto}
iframe#TopBanner {margin: 0 auto;display:block}
.adreduce {position:relative;height:80px;margin:0 auto}
.adextend {position: absolute;left: 50%;top: 0px;z-index: 1000;margin: 0 auto;width: 980px;margin-left: -490px;}


/* 서비스 메뉴 영역 */
.sect-service > .util li > a > span,
.sect-service > .gnb li > a > span {visibility:hidden;}

.sect-service {overflow:hidden; position:relative; height:30px;}
.sect-service > .util {float:left;}
.sect-service > .util > li, .sect-service > .gnb > li, .im-wrap .lnb li {float:left;}
.sect-service > .util li {border-right:1px solid #ddd;}
.sect-service > .util li:first-child {border-left:1px solid #ddd;}
.sect-service > .util li > a {padding:0 10px; line-height:30px;}
.sect-service > .util li > a.app {width:74px; height:30px; background-position:10px -714px;}
.sect-service > .util li > a.like {width:44px; height:30px; background-position:-85px -714px;}
.sect-service > .util li > a.frugal {width:85px; height:30px; background-position:-151px -714px;}
.sect-service > .util li > a.insta {width:60px; height:30px; background-position:-263px -714px;}
.sect-service > .gnb {float:right; margin:0; text-align:left;}
.sect-service > .gnb li {background:url(./../images/common/bg/bg_v_line.gif) no-repeat 0 50%;}
.sect-service > .gnb li:first-child {margin-left:0; background-image:none;}
.sect-service > .gnb li > a {padding:0 10px; line-height:30px;}
.sect-service > .gnb li > a.login {width:29px; background-position:10px 9px;}
.sect-service > .gnb li > a.logout {width:43px; background-position:-521px 9px;}
.sect-service > .gnb li > a.join {width:39px; background-position:-42px 9px;}
.sect-service > .gnb li > a.mycgv {width:39px; background-position:-103px 9px;}
.sect-service > .gnb li > a.vip {width:62px; background-position:-170px 9px;}
.sect-service > .gnb li > a.club {width:53px; background-position:-254px 9px;}
.sect-service > .gnb li > a.customer {width:38px; background-position:-328px 9px;}
.sect-service > .gnb li > a.showtimes {width:106px; padding-right:0; background-position:-388px 9px;}

/* 주메뉴 영역 */
.im-wrap {position:relative; z-index:100; height:50px; padding-top:69px;}
.im-wrap > h2 {position:absolute; top:28px; left:50%; width:428px; height:31px; margin-left:-214px; text-align:center;}
.im-wrap .lnb {width:376px; margin:0 auto; clear:both;} /* 이벤트&컬쳐 : width:376px; 이벤트 / 컬쳐 : width:440px; */
.im-wrap .lnb > ul > li {position:relative; height:35px;}
.im-wrap .lnb > ul > li:first-child {margin-left:0;}
.im-wrap .lnb > ul > li.on .sub-wrap {display:block;}
.im-wrap .lnb > ul > li.booking {margin-left:25px;}
.im-wrap .lnb > ul > li.theaters {margin-left:25px;}
.im-wrap .lnb > ul > li.event {margin-left:40px;}
.im-wrap .lnb > ul > li.culture {margin-left:40px;}
.im-wrap .lnb > ul > li.giftshop {margin-left:55px;}
.im-wrap .lnb > ul > li.movie > a, 
.im-wrap .lnb > ul > li.event > a, 
.im-wrap .lnb > ul > li.theaters > a, 
.im-wrap .lnb > ul > li.giftshop > a, 
.im-wrap .lnb > ul > li.booking > a,
.im-wrap .lnb > ul > li.culture > a {height:17px; text-align:center;}
.im-wrap .lnb > ul > li.movie > a {width:60px; background-position:13px -28px;}
.im-wrap .lnb > ul > li.booking > a {width:60px; background-position:-77px -28px;}
.im-wrap .lnb > ul > li.theaters > a {width:60px; background-position:-166px -28px;}
.im-wrap .lnb > ul > li.event > a {width:47px; background-position:-272px -28px;}
.im-wrap .lnb > ul > li.culture > a {width:90px; background-position:-517px -28px;}
.im-wrap .lnb > ul > li.giftshop > a {width:62px; background-position:-379px -28px;}

.im-wrap .lnb .sub-wrap {display:none; position:absolute; top:31px; z-index:100; width:164px; padding:3px; background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_smenu.png) repeat-y 0 0;}
.im-wrap .lnb > ul > li.movie > .sub-wrap {left:-56px;}
.im-wrap .lnb > ul > li.booking > .sub-wrap {left:-56px;}
.im-wrap .lnb > ul > li.theaters > .sub-wrap {left:-56px;}
.im-wrap .lnb > ul > li.event > .sub-wrap {left:-40px;}
.im-wrap .lnb > ul > li.culture > .sub-wrap {left:-37px;}

.im-wrap .lnb .sub-wrap > .smenu {padding:20px 15px; border:2px solid #828282;}
.im-wrap .lnb .sub-wrap > i {display:block; position:absolute; top:-10px; left:50%; width:19px; height:10px; margin-left:-9px; background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_smenu_arrow.png) no-repeat 0 0;}
.im-wrap .lnb .sub-wrap > .smenu li {margin-top:15px;}
.im-wrap .lnb .sub-wrap > .smenu li:first-child {margin-top:0;}
.im-wrap .lnb .sub-wrap > .smenu li > a {display:block; width:130px; color:#fff; font-weight:500; font-size:13px; line-height:15px;}
.im-wrap .lnb .sub-wrap > .smenu li > a:hover, 
.im-wrap .lnb .sub-wrap > .smenu li > a:focus, 
.im-wrap .lnb .sub-wrap > .smenu li.on > a {background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_smenu_hand.png) no-repeat 100% 1px; color:#fb4357;}
.im-wrap .lnb .sub-wrap > .smenu li.last {padding-top:15px; border-top:2px solid #828282;}

/* 통합검색 영역 */
.sect-srh {top:65px; left:749px; width:141px; height:24px;}
.sect-srh input[type='text'] {width:100px; height:22px; padding:0 34px 0 5px;}
.sect-srh > fieldset {position:relative;}
.sect-srh > fieldset button {position:absolute; top:0; right:0; width:31px; height:24px; background-color:#fb4357; background-image:none; color:#fff; font-weight:500; font-size:11px; line-height:24px; text-align:center;}
*+html .sect-srh > fieldset button {top:8px;}

/* 헤더 광고 영역 */
.im-wrap .ad-partner {position:absolute; top: 16px;left: 754px;}
.im-wrap .ad-partner > iframe,
.im-wrap .ad-partner > a,
.im-wrap .ad-partner > a > img {width: 133px;height: 42px;display: block;background:#FEF8DC;}

/* 예매 영역 */
.sect-booking {top:10px; right:0px;}
.sect-booking > a {width:86px; height:99px; background-position:0 -319px;}
/* 퀵메뉴 포토티켓 영역 */
.sect-phototicket {top:-10px; right:-1px;}
.sect-phototicket > a {width:91px; height:86px; background-position:-364px -305px;}
/* 개인화 영역 */
.sect-person {width:980px; height:80px; margin:8px auto 9px; padding:9px 0 15px; background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_com_line.png) repeat-x 0 100%; clear:both}
.sect-person > ul > li {float:left; position:relative; border-left:1px solid #231d1d}
.sect-person > ul > li:first-child {border-left:0;}
.sect-person > ul > li > a {width:161px; height:80px;}
.sect-person > ul > li > a.week {background-position:15px -89px;}
.sect-person > ul > li > a.theater {background-position:-128px -88px;}
.sect-person > ul > li > a.event {background-position:-270px -89px;}
.sect-person > ul > li > a.special {background-position:-413px -90px;}
.sect-person > ul > li > a.movielog {background-position:24px -196px;}
.sect-person > ul > li > a.ticket {background-position:-142px -197px;}
.sect-person > ul > li > a.dc {background-position:-324px -196px;}
.sect-person > ul > li > a.collage {background-position:-510px -196px;}
.sect-person > ul > li > a.arthouse {background-position:-510px -197px;background-image:url(http://img.cgv.co.kr/R2014/images/sprite/common_sprite_area_v2.png)}
.sect-person > ul > li > a.phototicket {background-position:-587px -88px;background-image:url(http://img.cgv.co.kr/R2014/images/sprite/common_sprite_area_v3.png)}

/* ===========================================
   Contents Area 
============================================ */
#contaniner {/*overflow:hidden;*/ position:relative; width:100%; z-index:7}
#contaniner.bg-bricks {background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_c_bricks.png) repeat-x 0 29px}
#contaniner .contents{width:980px; height:100%; margin:0 auto}



#contents {clear:both; padding-bottom:50px;}
.linemap-wrap {width:100%; background-color:#f1f0e5; border-bottom:1px solid #cacac0;}
.linemap-wrap .sect-linemap {position:relative; width:980px; height:28px; margin:0 auto;}
.linemap-wrap .sect-linemap > .sect-bcrumb {position:relative;}
.linemap-wrap .sect-linemap > .sect-bcrumb ul > li,
.linemap-wrap .sect-linemap li {float:left;}
.linemap-wrap .sect-linemap > .sect-bcrumb ul > li {margin-left:12px; padding-left:20px; background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_arrow.png) no-repeat 0 50%; font-size:12px;}
.linemap-wrap .sect-linemap > .sect-bcrumb ul > li:first-child {margin-left:0; padding-left:0; background:none;}
.linemap-wrap .sect-linemap > .sect-bcrumb ul > li:first-child > a > img {margin-top:5px;}
.linemap-wrap .sect-linemap > .sect-bcrumb ul > li > a,
.linemap-wrap .sect-linemap > .sect-special ul > li > a {display:block; color:#222; font-size:12px; line-height:28px}
.linemap-wrap .sect-linemap > .sect-bcrumb ul > li strong{color:#222; text-decoration:underline; line-height:28px;font-weight:500;}
.linemap-wrap .sect-linemap > .sect-bcrumb ul > li.last{color:#222; font-size:12px; text-decoration:underline; line-height:28px;font-weight:500;}
*+html .linemap-wrap .sect-linemap > .sect-bcrumb img {margin-top:-4px;}
.linemap-wrap .sect-linemap > .sect-special {overflow:hidden; position:absolute; top:0; right:0;}
.linemap-wrap .sect-linemap > .sect-special ul > li {padding:0 10px; border-right:1px solid #acaca3;}
.linemap-wrap .sect-linemap > .sect-special ul > li:first-child {border-left:1px solid #acaca3;}
.linemap-wrap .sect-linemap > .sect-special ul > li > a {color:#666; font-weight:500; font-size:11px; text-align:center;}

/* 7월 28- 8월 31일 특별관 클럽 이벤트용 CSS 주석제거로 사용가능, 8.31이후로는 css삭제*/
/* .linemap-wrap .sect-linemap > .sect-special ul li:first-child+li a, 노원 town 추가로 인해 주석처리함 0617 */
.linemap-wrap .sect-linemap > .sect-special ul li a.specialclub {
    background: url(https://img.cgv.co.kr/r2014/images/common/ico/ico_club_service.png) no-repeat 100% 50%;
    padding-right:25px;
text-align: left;

}
.linemap-wrap .sect-linemap > .sect-special ul li.dsr_btn +li a {color:#666;background:none;padding: 0 20px; width: auto; text-align: center;}
/*141114 포토티켓 추가*/
.linemap-wrap .sect-linemap > .sect-special ul > li a.photi {
	background: url(http://img.cgv.co.kr/R2014/images/common/ico/ico_photi.png) no-repeat 100% 50%;
	padding-right:25px;
}

/* ===========================================
   Footer Area 
============================================ */
/* #footer{background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_footer_com.gif) repeat-x 0 100%;} */
#footer .sect-ad {width:auto; height:240px; text-align:center;}
#footer .sect-ad iframe {width:100%; height:240px;display:block;}
#footer .foot {padding:0 0 147px; width:100%; height:auto;}
.sect-smuse {overflow:hidden; width:100%; border-top:1px solid #949494; border-bottom:1px solid #949494;}
.sect-smuse > ul {width:980px; margin:0 auto;}
.sect-smuse li {padding:10px 0;}
.sect-smuse li, .sect-cinfo li {float:left;}
.sect-smuse li {margin-left:32px;}
.sect-smuse li:first-child {margin-left:0;}
.sect-smuse li > a {height:44px;}
.sect-smuse li > a.dx {width:49px; background-position:0 -768px;}
.sect-smuse li > a.imax {width:59px; background-position:-74px -768px;}
.sect-smuse li > a.screenx {width:88px; background-position:-159px -768px;}
.sect-smuse li > a.spherex {width:76px; background-position:-273px -768px;}
.sect-smuse li > a.soundx {width:72px; background-position:-379px -768px;}
.sect-smuse li > a.tempur {width:55px; background-position:-480px -768px;}
.sect-smuse li > a.gold {width:84px; background-position:-567px -768px;}
.sect-smuse li > a.cine {width:89px; background-position:-679px -768px;}
.sect-smuse li > a.cinema {width:86px; background-position:0 -826px;}
.sect-smuse li > a.kids {width:70px; background-position:-113px -826px;}
.sect-smuse li > a.cinenforet {width:120px; background-position:-207px -826px;}

.sect-cinfo {padding-top:28px;}
/* .foot .sect-cinfo{} */
/* Common Css : sect-cinfo */
.sect-cinfo .familysite, .sect-cinfo .share, .sect-cinfo .logo {position:absolute;}

.sect-cinfo .policy {width: auto;letter-spacing:0px; margin:0 -11px;}
.sect-cinfo .policy li {background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_li_vline2.gif) no-repeat 0 1px;}
.sect-cinfo .policy li:first-child {background-image:none;}
/* .sect-cinfo .policy li:first-child > a:first-child {padding-left:0;} */
.sect-cinfo .policy li > a {padding:0 6px; font-weight:500; font-size:13px; color:#444444; text-decoration:none; vertical-align:middle;letter-spacing:-1px}
.sect-cinfo .policy li > a.empha-red {color:#e7612e;}

.sect-cinfo .familysite {bottom:22px; right:0;}
.sect-cinfo .familysite select {width:140px; background:transparent; border:1px solid #999;}
.sect-cinfo .familysite button[type='button'] {width:29px; height:29px; background-color:#666; color:#fdfcf0; font-family:verdana, sans-serif; font-size:10px; font-weight:bold; text-align:center;}

.sect-cinfo .share {position:absolute; display:inline-block; right:182px; top:63px;}
.sect-cinfo .share a {float:left; width:34px; height:34px; margin-left:2px;}
.sect-cinfo .share a:first-child {margin-left:0;}
.sect-cinfo .share a.facebook {background-position:-509px -429px;}
.sect-cinfo .share a.twitter {background-position:-551px -429px;}
.sect-cinfo .share a.instagram {background-position:-593px -429px;}

.sect-cinfo .logo {top:65px; left:0; width:90px; height:43px; background-position:-145px -319px;}


.foot .sect-cinfo .address {padding:20px 0 0 108px; font-size:12px; color:#555555;}
.sect-cinfo .address address {font-style:normal; height:12px;}
.sect-cinfo .address p {margin-top:4px;}
.sect-cinfo .address p.vl > span {display:inline-block; padding-left:5px; margin-left:5px; height:12px; border-left:1px solid #c0c0c0;}
.sect-cinfo .address p.vl > span:first-child {padding-left:0; margin-left:0; border-left:0;}
.sect-cinfo .address p.copyright {position:absolute; right:0; bottom:0; font-family:Helvetica, verdana, sans-serif; font-size:11px;}
.sect-cinfo .address .btn_goFtc{margin-left:2px;vertical-align:2px}

/* Mobile Version View */
.mobile-foot-wrap {
	width:100%;
	margin:0 auto; 
	padding:10px 0; 
	background: #fdfcf0; /* Old browsers */
	background: -moz-linear-gradient(top, #fdfcf0 22%, #efe5c2 101%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(22%,#fdfcf0), color-stop(101%,#efe5c2)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #fdfcf0 22%,#efe5c2 101%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #fdfcf0 22%,#efe5c2 101%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top, #fdfcf0 22%,#efe5c2 101%); /* IE10+ */
	background: linear-gradient(to bottom, #fdfcf0 22%,#efe5c2 101%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fdfcf0', endColorstr='#efe5c2',GradientType=0 ); /* IE6-9 */
	text-align:center;
}
.mobile-foot-wrap a {
	display:inline-block; 
	width:auto; 
	height:54px; 
	padding-right:50px; 
	background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_mobile_arrow.gif) no-repeat 100% 50%; 
	color:#333; 
	font-weight:500; 
	font-size:50px; 
}

/* S Footer */
footer{min-width:1040px; padding:0 0 14px; background-color:#f8f8f8; margin-top: 50px;} 
footer .policy_list{display:flex; justify-content:space-between; max-width:980px; margin:0 auto; padding:23px 0; border-bottom:1px solid #ebebeb}
footer .policy_list li a{font-weight:500; font-size:13px; color:#666; line-height:1.462em}
footer .policy_list li a:hover{text-decoration:underline}
footer .policy_list li a strong{font-weight:700; color:#222; text-decoration:underline}
footer .company_info_wrap{display:flex; justify-content:space-between; align-items:flex-end; max-width:980px; margin:0 auto; padding:23px 0}
	.company_info{font-size:12px; color:#666; line-height:1.667em}
	.company_info address{font-style:normal}
	.company_info .company_info_list{display:flex}
	.company_info .company_info_list dt:after{content:':'; padding:0 4px}
	.company_info .company_info_list dt ~ dt:before{content:'·'; padding:0 8px 0 4px}
	.company_info .company_info_list dd a{text-decoration:underline}

	footer .familysite_wrap{position:relative; }
	footer .familysite_wrap label{position:absolute; left:0; top:0; width:calc(100% - 38px); height:100%; font-size:0; line-height:0}
	footer .familysite_wrap select{position:relative; height:34px; font-size:12px; color:#666; line-height:34px; border:none; background-color:transparent; border:1px solid #d8d8d8}
	footer .familysite_wrap select option.familysiteTitle{display:none}
	footer .familysite_wrap .btn_familysite{display:inline-flex; justify-content:center; align-items:center; width:36px; height:34px; margin-left:-1px; font-size:14px; color:#fff; line-height:1.429em; background-color:#9e9e9e; vertical-align:top}
/* E Footer */
/* ===========================================
   Slider Modules
============================================ */
.sect-common, .cols-movie {overflow:hidden; width:980px;}
.sect-common {height:450px; margin-top:25px}
.cols-movie {height:388px;}

.slider {overflow:hidden; position:relative; z-index:1; width:100%; height:100%;}
.slider > button[type='button'] {position:absolute; background-image:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_btn.png); background-repeat:no-repeat; font:0/0 a; zoom:1;}
.slider > .btn-prev, 
.slider > .btn-next, 
.slider > .btn-prev.dim, 
.slider > .btn-next.dim {overflow:hidden; top:50%; width:26px; height:52px; text-indent:100%; white-space:nowrap; margin-top:-26px;}
.slider > .btn-prev {left:19px; background-position:0 -97px;}
.slider > .btn-prev.dim {background-position:0 -155px;}
.slider > .btn-next {right:19px; background-position:-30px -97px;}
.slider > .btn-next.dim {background-position:-30px -155px;}
/* .slider ul {clear:both;} */
/* .slider li - item으로 대체 */

.slider .item-wrap {float:left;}
*+html .slider .item-wrap {display:inline;}
.slider button[type='button'] {z-index:20;}
.slider button[type='button'].btn-pause, 
.slider button[type='button'].btn-play, 
.slider .item-wrap > button[type='button'] {overflow:hidden; position:absolute; top:415px; width:13px; height:13px; background:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_icon.png) no-repeat 0 -90px; text-indent:100%; white-space:nowrap;}
.slider .item-wrap button[type='button'].on {background-position:-16px -90px;}
.slider .item-wrap > .item {position:absolute; z-index:5; text-align:center;}
.slider .item-wrap.on > .item {z-index:10;}
.slider .item-wrap.move > .item {z-index:15;}
.slider .item-wrap.on > .item > a {display:block;}
.slider .item-wrap > .item .ico-play {top:50%; left:50%; width:66px; height:66px; margin:-33px 0 0 -33px; background-position: -121px -21px;}

/* .slider .item-wrap > button[type='button'] {display:none;} */
.slider button[type='button'].btn-play {left:534px; background-position:-32px -90px;}
.slider button[type='button'].btn-pause {left:551px; background-position:-48px -90px;}

/* 포토 나오는 슬라이더  */
.layer-wrap{ position:absolute; top:50%; left:50%; z-index:200;}
.layer-contents{ width: 980px; height: 506px;}
.layer-contents .slider{ overflow:visible;}
.layer-contents	.slider button[type='button'].btn-next{ right:-40px;}
.layer-contents	.slider button[type='button'].btn-prev{ left:-40px}
.layer-contents	.slider .item{ position:absolute; display:inline-block; text-align:center; background:#000000; white-space:normal;}
.layer-contents	.slider .item:before{ content:'';  display:inline-block; height:100%; vertical-align:middle;}
.layer-contents	.slider .item img{ width:auto; height:auto; max-width:100%; max-height:100%;}
*+html .layer-contents .slider .item{ background:none;}
.layer-contents .slider + .btn-close{ top:-23px; right:40px;}
/* 큐레이터 오디오파일재생 팝업 */
.wrap-audio{ position:relative; width:100%; height:100%; padding:15px 7px; background:#000000; }
.wrap-audio > h5:first-child{ margin-bottom:10px; font-size:13px; color:#cccccc; padding:0;}
.wrap-audio > .audio-contents{ width:340px; height:224px; border:1px solid #cccccc; }
.wrap-audio > .audio-contents > p{ height:175px; background:url('https://img.cgv.co.kr/r2014/images/common/bg/bg_txt_sound.gif') 50% 50% no-repeat; font:0/0 a; zoom:1;}
.wrap-audio > h5{ padding:15px 20px 10px; font-size:11px; color:#cccccc;}
.wrap-audio > textarea { width:320px; height:130px; border:1px solid #4b4b4b; background:#000000; color:#cccccc; font-size:11px;}
.wrap-audio + .btn-close { top:55px; right:20px;}


.now-showing, .now-showing h4, .now-showing a.link-reservation {position:absolute;}
.now-showing {bottom:0; z-index:20; width:733px; height:78px; background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_now_showing.png) no-repeat 0 0;}
.now-showing h4 {top:32px; left:22px;}
.now-showing dl {margin:19px 0 0 177px;}
.now-showing dl dt {color:#fffdf1; font-weight:500; font-size:15px;}
.now-showing dl dt > a, .now-showing a.link-reservation {background-image:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_btn.png); background-repeat:no-repeat;}
.now-showing dl dt > a {overflow:hidden; display:inline-block; width:20px; height:19px; margin-left:10px; background-position:-50px -62px; text-indent:100%; white-space:nowrap;}
.now-showing dl dd {margin-top:10px; color:#fffdf1; font-size:12px;}
.now-showing a.link-reservation {display:block; width:62px; height:62px; top:8px; right:8px; background-position:-158px 0;}

/* Movie Selection Slider Type */
.cols-movie .col-slider {float:left; width:733px; height:388px;}
.cols-movie .col-slider > iframe {width:733px; height:388px;}
.cols-movie .col-ad {float:right; width:240px; height:388px;}
.cols-movie .col-ad > iframe {width:240px; height:388px;}

/* ===========================================
   Global Css
============================================ */

/* Heading Css (only) */
h3 {height:41px; margin:30px 0 15px; line-height:41px; text-align:center; font-weight:500;}
h3 > img { padding:0 8px}
h3.sub{ height:auto; background-position:0 17px;}
h3.sub > span{ display:block; margin-top:3px; background-position:0 17px; font-size:17px; color:#333333; }
h3.sub > span > strong{ color:#c62422;}

/* Heading Css (combo) */
.tit-heading-wrap {position:relative; height:60px; padding-top:30px; border-bottom:3px solid #241d1e;}
.tit-heading-wrap > h3 {display:inline-block; position:relative; height:inherit; margin:0; background-image:none; color:#222; font-weight:500; font-size:36px; text-align:left; vertical-align:middle;}
*+html .tit-heading-wrap > h3 { display:inline;}
.tit-heading-wrap > h3 + a {display:inline-block;}
.tit-heading-wrap > .submenu {position:absolute; top:48px; right:0;}
.tit-heading-wrap > .submenu > ul {overflow:hidden;}
.tit-heading-wrap > .submenu > ul:after {content:''; clear:both; display:block;}
.tit-heading-wrap > .submenu > ul > li {float:left; margin-left:15px;}
.tit-heading-wrap > .submenu > ul > li:first-child {margin-left:0;}
.tit-heading-wrap > .submenu > ul > li > a {display:inline-block; padding-left:13px; font-weight:500; font-size:14px;}
.tit-heading-wrap > .submenu > ul > li.on > a,
.tit-heading-wrap > .submenu > ul > li > a:hover,
.tit-heading-wrap > .submenu > ul > li > a:focus {background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_arrow07.png) no-repeat 0 3px; color:#fb4357;}

.tit-heading-wrap .sect-sorting { display:inline-block; margin-top:0;}
/* Sorting Css */
.sect-sorting {position:relative;margin-top:20px; text-align:right;}
.sect-sorting .nowshow {position:absolute;left:0;top:0}
.sect-sorting > select {padding:3px 5px;}
.sect-sorting > select option {height:23px; line-height:23px;}


/* ===========================================
   Main Css
============================================ */
.sect-event { min-height:200px; margin-bottom:30px; padding-bottom:30px; border-bottom:3px solid #241d1e;}
.sect-event ul {margin-top:16px; clear:both;}
.sect-event li {float:left; margin-left:6.6px;}
.sect-event li:first-child {margin-left:0;}
.sect-event iframe {width:980px; height:200px;}

.cols-banner {overflow:hidden;}
.cols-banner .col-ad, .cols-banner .col-hd, .cols-banner .col-collage {float:left;}
.cols-banner .box-com {width:228px; height:261px; padding:3px; border:3px solid #241d1e;}
.cols-banner .box-com .box-inner {width:226px; height:259px; border:1px solid #241d1e; text-align:center;}
.cols-banner .box-com .box-inner iframe,
.cols-banner .box-com .box-inner a {display:block; width:226px; height:259px;}
.cols-banner .col-hd {position:relative; width:486px; height:273px; margin:0 7px;}
.cols-banner .col-hd .tit-hd {position:absolute; width:486px; height:92px; padding-top:12px; background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_hdtrailor_bar.png) no-repeat 0 0; text-align:center;}
.cols-banner .col-hd button[type='button'] {overflow:hidden; position:absolute; width:66px; height:66px; top:50%; left:50%; margin:-33px 0 0 -33px; background:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_icon.png) no-repeat -121px -21px; text-indent:100%; white-space:nowrap;}

/* ===========================================
   New Notice Css
============================================ */
.sect-notice-info {position:relative; height:35px; margin-top:10px; border-bottom:1px solid #222; line-height:35px;}
.sect-notice-info h3,
.sect-notice-info a {float:left; vertical-align:middle;}
.sect-notice-info h3 {height:35px; margin:0 15px 0 0; padding:0 0 0 26px; background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_notice.png) no-repeat  1px 50%; color:#333; font-size:15px; line-height:35px;}
.sect-notice-info a {overflow:hidden; display:block; width:730px; text-overflow:ellipsis; white-space:nowrap;}
.sect-notice-info span {display:block; position:absolute; top:0; right:0; color:#222; font-size:12px;}
.sect-notice-info .sect-notice-list                                     {position:absolute;top:0;left:90px;width:880px;height:35px;overflow:hidden}
.sect-notice-info ul li                                                 {position:relative;width:880px}


/* ===========================================
   Aside Banner Css
============================================ */
.sect-aside-banner {width:116px; text-align:left;}
.sect-aside-banner .aside-content-top {padding-top:10px; background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_aside_banner_top.png) no-repeat 0 0;}
.sect-aside-banner .aside-content-btm {padding:0 7px 10px; background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_aside_banner_bottom.png) no-repeat 0 100%;}
.sect-aside-banner > .btn-top > a {width:116px; height:72px; background:url(https://img.cgv.co.kr/r2014/images/common/btn/btn_top.png) no-repeat 0 0;}
.sect-aside-banner > .btn-top > a > span {visibility:hidden;}


/* ===========================================
   Showtimes Module
============================================ */
h4.tit-showtime {padding-bottom:18px; color:#333; font-size:31px; text-align:left;}
.showtimes-wrap {width:800px;}

/* Showtimes Common Css */
.showtimes-wrap .early {padding-left:18px; background-position:0 -176px;}
.showtimes-wrap .midnight {padding-left:13px; background-position:0 -195px;}
.showtimes-wrap .early, .showtimes-wrap .midnight, .showtimes-wrap .ico_script, .sect-city li > a, /* .sect-guide .descri-timezone p, */ 
.descri-info li > a, .sect-showtimes .col-theater {font-weight:500;}
.showtimes-wrap .early, .showtimes-wrap .midnight, .descri-info > ul  > li > a 
{background-image:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_icon.png); background-repeat:no-repeat;}
.showtimes-wrap .early, 
.showtimes-wrap .midnight, 
.showtimes-wrap .early, 
.showtimes-wrap .midnight, 
.showtimes-wrap .ico_script,
.descri-info > ul  > li > a, 
.sect-showtimes .info-timetable a > em {color:#333;}
.sect-showtimes .info-timetable a > span {color:#2275a4; font-weight:500;}
.sect-schedule li > .day a {width:77px; height:48px;}
.sect-city li > a, .sect-schedule li > .day a, .descri-info > ul  > li > a {display:block;}
.sect-schedule li:first-child, .sect-guide .descri-timezone li:first-child, .sect-guide .descri-info > ul  > li:first-child {margin-left:0;}
.showtimes-wrap .ico_script > em {width:10px;height:10px;display:inline-block;border:2px solid #ff6c00;vertical-align:middle;margin-right:4px;margin-bottom:1px;}
/* .showtimes-wrap .ico_script > span{} */

.showtimes-wrap.eng .sect-guide {padding-left:0;}
.showtimes-wrap.eng .descri-timezone,
#contents.eng .descri-info .viewgrade {font-size:11px; letter-spacing:-0.5px;}


/* 영화 타입 선택 */
.sect-movie-type{ margin-bottom:30px; padding:20px 0; border-top:2px solid #2b2b2b;border-bottom:2px solid #2b2b2b;}
.sect-movie-type:after{ content:''; clear:both; display:block;}
*+html .sect-movie-type{ zoom:1;}
.sect-movie-type > h4{ float:left; width:150px; padding-left:16px;  color:#333333; font-size:17px;}
.sect-movie-type > ul{ float:left; width:600px; padding-left:30px;border-left:2px solid #dfddd3;}
.sect-movie-type > ul:after{ content:''; clear:both; display:block;}
*+html .sect-movie-type> ul{ zoom:1;}
.sect-movie-type > ul > li{ float:left; width:270px; height:29px; margin:2px 13px 2px 0;}
.sect-movie-type > ul > li > a{ display:block; padding-left:9px; color:#222222; font-size:14px; font-weight:500; line-height:29px;white-space:nowrap; text-overflow:ellipsis; overflow:hidden;}
.sect-movie-type > ul > li:hover, .sect-movie-type > ul > li.on{ background:url('https://img.cgv.co.kr/r2014/images/common/bg/bg_movielist.png') 0 0 no-repeat;}
.sect-movie-type > ul > li:hover a, .sect-movie-type > ul > li.on a{ color:#ffffff;}


/* 도시 선택 */
.sect-city {height:44px; border-top:3px solid #241D1E; line-height:44px;}
.sect-city li {float:left; margin:0 8px;}
.sect-city li > a {padding:0 16px; color:#666; font-size:13px;}
.sect-city li.on > a, .sect-city li > a:focus {color:#333; background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_arrow02.png) no-repeat 50% 100%;}

/* 일 선택 */
.showtimes-wrap .sect-schedule {width:100%; height:111px; border-top:3px solid #241d1e;}
.showtimes-wrap .slider {position:relative; /*width:640px;*/ height:48px; padding:12px 80px;}
.showtimes-wrap .slider .item-wrap {display:none; overflow:hidden; height:48px;}
.showtimes-wrap .slider .item-wrap > .item {position:static;}
.showtimes-wrap .slider .item-wrap.on {display:block}
.showtimes-wrap .slider > button[type='button'] {position:absolute; top:27px; width:54px; height:19px; margin:0; font:0/0 a; background-image:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_btn.png); background-repeat:no-repeat; zoom:1;}
.showtimes-wrap .slider > button[type='button'].btn-prev {left:0px; background-position:-117px -174px;}
.showtimes-wrap .slider > button[type='button'].btn-next {right:0px; background-position:-117px -155px;}
.showtimes-wrap .slider > button[type='button'].btn-prev.dim {background-position:-61px -155px;}
.showtimes-wrap .slider > button[type='button'].btn-next.dim {background-position:-61px -174px;}
.showtimes-wrap .slider li {float:left; margin-left:2px;}
.showtimes-wrap .slider li > .day {position:relative; width:77px; height:48px; color:#717171;}
.showtimes-wrap .slider li > .day span, .showtimes-wrap .slider li > .day em, .showtimes-wrap .slider li > .day strong {position:absolute; font-weight:300; font-size:11px;}
.showtimes-wrap .slider li > .day span {top:14px; left:8px;}
.showtimes-wrap .slider li > .day em {top:28px; left:15px;}
.showtimes-wrap .slider li > .day strong {top:8px; left:31px; font-family:verdana, sans-serif; font-size:32px; line-height:32px;}
.showtimes-wrap .slider li.on > .day {background:#fff url(https://img.cgv.co.kr/r2014/images/sprite/sprite_btn.png) no-repeat -61px -97px;}
.showtimes-wrap .slider li.on > .day > a {height:48px;}
*+html .showtimes-wrap .slider li.on > .day > a {cursor:pointer;}
.showtimes-wrap .slider li.on > .day span, .showtimes-wrap .slider li.on > .day em, .showtimes-wrap .slider li.on > .day strong {color:#000;}

/* 조조,심야,안내 */
.sect-guide {position:relative; height:37px; padding:0 0 0 13px;  border-top:2px solid #474746; border-bottom:1px solid #474746; line-height:37px;}
.sect-guide .descri-timezone ul {float:left;}
.sect-guide .descri-timezone ul:after {clear:none;}
.sect-guide .descri-timezone li, .descri-info > ul  > li {float:left; position:relative; margin-left:15px;}
.sect-guide .descri-timezone p {float:left; margin-left:20px; color:#794624;}
.descri-info {position:absolute; top:12px; right:6px;}
.descri-info > ul > li > a {height:13px; padding-left:18px; background-position:0 -158px; line-height:13px;}
/* .descri-info > ul > li > a.priceinfo{} */
.descri-info > ul > li > a.priceinfo + .layer-wrap{ left:-506px; top:-80px;}
.descri-info > ul > li > a.priceinfo + .layer-wrap .pop_contents{ height:500px; overflow-y:auto;}
.descri-info > ul > li > a.priceinfo + .layer-wrap .sect-price .tbl-list .col01{ width:80px;}
.descri-info > ul > li > a.priceinfo + .layer-wrap .sect-price .tbl-list .col02{ width:80px;}
/* .descri-info > ul > li > a.viewgrade{} */
.descri-info > ul > li > a.viewgrade + .layer-wrap{ left:-608px; top:30px;}
.descri-info.theater2 {top:89px;right:6px;z-index:4000}

#movie_review_list_container a.view_review_detail_popup + .layer-wrap{ left:50%; top:-100px; margin-left:-375px;}
#movie_review_list_container a.view_review_detail_popup + .layer-wrap .layer-contents{ width:745px; height:auto;}
#movie_review_list_container a.view_review_detail_popup + .layer-wrap .pop-contents{ max-height:400px; overflow-x: hidden; overflow-y:auto; white-space:pre;word-wrap: break-word;}
#movie_review_list_container a.view_review_detail_popup + .layer-wrap .pop-contents > div{ margin-bottom:20px;}
#movie_review_list_container a.view_review_detail_popup + .layer-wrap .pop-contents *{white-space:normal;}
#movie_review_list_container a.view_review_detail_popup + .layer-wrap .pop-contents img{ max-width:100%;}

/* 영화관 및 일정 리스트 */
/* .sect-showtimes {} */
.sect-showtimes > ul > li {padding:40px 0; border-top:1px solid #474746;}
.sect-showtimes > ul > li.nodata {text-align:center;}
.sect-showtimes > ul > li.nodata strong {color:#222; font-size:13px;}
.sect-showtimes > ul > li:first-child {border-top:0 none;}
.sect-showtimes > ul > li:after {content:''; clear:both; display:block;}
.sect-showtimes > ul > li {zoom:1;}
.sect-showtimes .col-theater, .sect-showtimes .col-times {float:left;}
.sect-showtimes .col-theater {width:97px; padding:14px 0 0 14px; color:#000; font-size:16px; line-height:1.2em;}
.sect-showtimes .col-times {position:relative; margin-left:14px; padding-left:26px;}
.sect-showtimes .col-times > .info-movie {vertical-align:middle;}
.sect-showtimes .col-times > .info-movie strong {margin-right:5px; color:#000; font-size:16px;}

.sect-showtimes .col-times > .info-movie .round { line-height:16px; vertical-align:top;}
.sect-showtimes .col-times > .info-movie .round.red{ font-family:Verdana, Geneva, sans-serif; font-weight:bold;}
.sect-showtimes .col-times .cgvIcon.etc{position:absolute; top:-2px; left:-1px}
/* .sect-showtimes .col-times .ico-grade {top:-2px; left:-1px;} */

/* 영화관 정보 */
.sect-showtimes .type-hall {margin-top:10px; padding-top:10px;}
.sect-showtimes .type-hall:after, .sect-showtimes .info-hall:after {content:''; clear:both; display:block;}
.sect-showtimes .type-hall, .sect-showtimes .info-hall {zoom:1;}
.sect-showtimes .type-hall:first-child {margin-top:0; border-top:0 none;}
.sect-showtimes .info-hall {clear:both; margin-bottom:5px; padding-left:16px; background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_arrow03.png) no-repeat 2px 50%;}
.sect-showtimes .info-hall li {float:left; padding:0 8px; background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_li_vline.gif) no-repeat 0 50%; color:#333; font-weight:500; font-size:11px; line-height:17px;}
.sect-showtimes .info-hall li:first-child {padding-left:0; background-image:none;}

/* Screen Type */
.sect-showtimes .type-hall .screentype,
.sect-mycgv-cancle .screentype,
.cols-mycgv-booking .lst-item .box-contents .screentype {display:inline-block;}
.sect-showtimes .type-hall .screentype span,
.sect-showtimes .type-hall .screentype a,
.sect-mycgv-cancle .screentype span,
.sect-mycgv-cancle .screentype a,
.cols-mycgv-booking .lst-item .box-contents .screentype span,
.cols-mycgv-booking .lst-item .box-contents .screentype a {width:82px; height:17px; background:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_screentype02.png) no-repeat 0 0; font:0/0 a; vertical-align:middle;}
.cols-mycgv-booking .lst-item .box-contents .screentype span {width:82px; height:17px; background:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_screentype02.png) no-repeat 0 0; font:0/0 a; vertical-align:middle; zoom:1;}
.sect-showtimes .type-hall .screentype .gold,
.sect-mycgv-cancle .screentype .gold,
.cols-mycgv-booking .lst-item .box-contents .screentype .gold {background-position:-99px 0;}
.sect-showtimes .type-hall .screentype .imax,
.sect-mycgv-cancle .screentype .imax,
.cols-mycgv-booking .lst-item .box-contents .screentype .imax {background-position:-99px -18px;}
.sect-showtimes .type-hall .screentype .forDX,
.sect-mycgv-cancle .screentype .forDX,
.cols-mycgv-booking .lst-item .box-contents .screentype .forDX {background-position:-99px -36px;}
.sect-showtimes .type-hall .screentype .cine,
.sect-mycgv-cancle .screentype .cine,
.cols-mycgv-booking .lst-item .box-contents .screentype .cine {background-position:-99px -126px;}
.sect-showtimes .type-hall .screentype .collage,
.sect-mycgv-cancle .screentype .collage,
.cols-mycgv-booking .lst-item .box-contents .screentype .collage {background-position:-99px -235px;}
.sect-showtimes .type-hall .screentype .soundX,
.sect-mycgv-cancle .screentype .soundX,
.cols-mycgv-booking .lst-item .box-contents .screentype .soundX {background-position:-99px -144px;}

.sect-showtimes .type-hall .screentype .arthouse,
.sect-mycgv-cancle .screentype .arthouse,
.cols-mycgv-booking .lst-item .box-contents .screentype .arthouse {background-position:-99px -272px;}

.sect-showtimes .type-hall .screentype .sphereX,
.sect-mycgv-cancle .screentype .sphereX,
.cols-mycgv-booking .lst-item .box-contents .screentype .sphereX {background-position:-99px -291px;}

.sect-showtimes .type-hall .screentype .tempurCinema,
.sect-mycgv-cancle .screentype .tempurCinema,
.cols-mycgv-booking .lst-item .box-contents .screentype .tempurCinema {background-position:-99px -310px;}

.sect-showtimes .type-hall .screentype .screenX,
.sect-mycgv-cancle .screentype .screenx,
.cols-mycgv-booking .lst-item .box-contents .screentype .screenx {background-position:-99px -162px;}

.sect-showtimes .type-hall .screentype .skybox,
.sect-mycgv-cancle .screentype .skybox,
.cols-mycgv-booking .lst-item .box-contents .screentype .skybox {background-position:-99px -367px;}

.sect-showtimes .type-hall .screentype .cineliving,
.sect-mycgv-cancle .screentype .cineliving,
.cols-mycgv-booking .lst-item .box-contents .screentype .cineliving {background-position:-99px -386px;}

.sect-showtimes .type-hall .screentype .fordx_scrx,
.sect-mycgv-cancle .screentype .fordx_scrx,
.cols-mycgv-booking .lst-item .box-contents .screentype .fordx_scrx {background-position:-99px -405px;}

.sect-showtimes .info-timetable em, .sect-showtimes .info-timetable span {color:#888;}
.sect-showtimes .info-timetable em {display:block; font-family:verdana, sans-serif; font-size:12px; font-weight:bold;}
.sect-showtimes .info-timetable span {display:inline-block; font-size:11px;}

.sect-showtimes .info-timetable > ul > li {float:left; position:relative; width:70px; height:36px; margin-right:-1px; padding-top:5px; border:1px solid #cbcabe; line-height:1.4; text-align:center;}
.sect-showtimes .info-timetable > ul > li > a > .timeset {display:none; position:absolute; top:-1px; left:0; z-index:100;} 
.sect-showtimes .info-timetable > ul > li.on > a > .timeset,
.sect-showtimes .info-timetable > ul > li > a:hover > .timeset, 
.sect-showtimes .info-timetable > ul > li > a:focus > .timeset {display:block;}
.sect-showtimes .info-timetable > ul > li .timeset > .start-time {display:inline-block; width:68px; height:39px; border:2px solid #333;}
.sect-showtimes .info-timetable > ul > li .timeset > .end-time {display:inline-block; position:absolute; top:-30px; left:4px; width:63px; height:24px; background-color:#fff; border:1px solid #333; color:#333; font-weight:500; font-size:12px; line-height:26px; text-align:center;}
.sect-showtimes .info-timetable > ul > li .timeset > .end-time > i {position:absolute; left:50%; bottom:-6px; width:10px; height:6px; margin-left:-5px; background:url(https://img.cgv.co.kr/r2014/images/common/ico/ico_endtime_arrow.png) no-repeat 50% 0;}
/* 영문자막 */
.sect-showtimes .info-timetable > ul > li.script {border:2px solid #ff6c00;}
.sect-showtimes .info-timetable > ul > li.script:hover {border:2px solid #333;}
.sect-showtimes .info-timetable > ul > li.script > a > .timeset {left:-1px}
.sect-showtimes .info-timetable > ul > li .timeset > .start-time {border:none}

.sect-showtimes .info-timetable > ul > li .minimap{display:block;position:absolute;height:25px;right:35px;bottom:0;background-color:#333;overflow:hidden;box-shadow:inset 2px 2px 2px 0 rgba(0, 0, 0, 0.4);width:200px;height:200px}
.sect-showtimes .info-timetable > ul > li .minimap.opened{height:auto;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_header{position:relative;padding-right:12px;height:25px;line-height:24px;text-align:center;color:#e8e8e8;font-size:10px;font-weight:bold;font-family:Verdana, Geneva, Arial, Helvetica, sans-serif;cursor:pointer;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_header span{position:absolute;top:12px;right:7px;width:7px;height:4px;background:url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_arrow_white.png) no-repeat;}
.sect-showtimes .info-timetable > ul > li .minimap.opened .mini_header span{top:11px;background-image:url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/tabmenu_arrow_white2.png);}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container{margin:5px;margin-top:0;position:relative;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_screen{position:absolute;top:0;width:100%;height:15px;line-height:15px;font-size:10px;text-align:center;background:url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/screen_bg.png) repeat-x left;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seats{position:absolute;top:30px;right:15px;left:15px;bottom:15px;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_exits{position:absolute;top:15px;right:0;bottom:0;left:0;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat{position:absolute;left:0;right:0;display:block;width:4px;height:4px;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat span{display:block;width:3px;height:3px;background-color:#8e8e8e;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat.sweet span{background-color:#d9486e;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat.veat span{background-color:#13295f;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat.fourd span{background-color:#74501c;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat.wide span{background-color:#0b5741;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat.couple span{background-color:#794491;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat.handicap span{background-color:#7cae39;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat.reserved span{background-color:#4f4f4f;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_container .mini_seat.cinekids span{background-color:#2782b1;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_region{display:none;position:absolute;top:10px;left:20px;width:50px;height:50px;cursor:pointer;}
.sect-showtimes .info-timetable > ul > li .minimap.opened .mini_region{display:block;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_region span{display:block;position:absolute;left:0;right:0;top:0;bottom:0;border:1px solid #fff;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_exit{display:none;position:absolute;width:8px;height:8px;background:url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/seat_icons.png) no-repeat;background-position:-100px -50px;}
.sect-showtimes .info-timetable > ul > li .minimap.opened .mini_exit{display:block;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_exit.br{bottom:1px;right:20px;background-position:-175px -50px;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_exit.bl{bottom:1px;left:20px;background-position:-175px -50px;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_exit.tr{top:4px;right:20px;background-position:-100px -50px;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_exit.tl{top:4px;left:20px;background-position:-100px -50px;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_exit.cr{top:40%;right:3px;background-position:-125px -50px;}
.sect-showtimes .info-timetable > ul > li .minimap .mini_exit.cl{top:40%;left:3px;background-position:-150px -50px;}
.col-detail .totaldiv {position:absolute}
.info-noti {padding:12px 0 0 16px; border-top:2px solid #474746;}
.theater_minimap {position:absolute; background-color:#fff; border:3px solid #000; z-index:4000}        
.theater_minimap span.arr {position:absolute;left:50%;margin-left:-7px;bottom:-13px;width:15px;height:13px;background:url(http://img.cgv.co.kr/r2014/images/common/bg/bg_arrow04.png) no-repeat 0 0}
.theater_minimap .data_txt {padding:5px 10px;border-bottom:1px solid #ddd;text-align:center;}
.theater_minimap .data_txt p {font-weight:500;}
.theater_minimap .data_txt p.txt1 {font-size:12px;color:#000}
.theater_minimap .data_txt p.txt2 {font-size:11px}    
.theater_minimap .theater_time {font-size:10px;font-style:normal;font-weight:500;color:#000;text-align:center;padding:5px 0}
.theater_minimap .map_area {position:relative;border-bottom:1px solid #ddd;}
.theater_minimap .mini_container {position:relative;margin:0 auto;padding:0 20px;margin:0 auto;}
.theater_minimap .mini_container .mini_screen {text-align:center;padding-top:2px;text-decoration:underline;font-size:9px;font-family:Tahoma,Verdana,sans-serif}
.theater_minimap .mini_container .mini_seats {position:absolute;top:24px;left:35px}
.theater_minimap .mini_container .mini_seat {position: absolute;left: 0;right: 0;display: block;width: 4px;height: 4px;}
.theater_minimap .mini_container .mini_seat span {display: block;width: 3px;height: 3px;background-color: #8e8e8e;}
.theater_minimap .mini_container .mini_seat.reserved span {background-color: #dadada;}

/* ===========================================
   Favority CGV Module
============================================ */

/* 극장별 상영시간표 */
.favorite-wrap {position:relative; width:874px;height: 400px;padding: 60px 53px 0;background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_showtimes_favorite.gif) no-repeat 0 0;}
.favorite-wrap .tab-menu,
.subtitles-wrap .tab-menu {position:absolute;top: 11px;width:874px;}
.favorite-wrap .sect-favorite {position:relative; width:676px; height:49px; padding-left:198px;}
.favorite-wrap .sect-favorite h4 {position:absolute; top:14px; left:33px; padding:0; font:0/0 a; zoom:1;}
.favorite-wrap .sect-favorite li {float:left; margin-left:2px; padding:2px; border:2px solid #6e6c6d;}
.favorite-wrap .sect-favorite li:first-child {margin-left:0;}
.favorite-wrap .sect-favorite li > a {display:block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; position:relative; display:block; width:107px; height:39px; border:1px solid #6e6c6d; color:#fff; font-weight:500; font-size:11px; line-height:39px; text-align:center;}
.favorite-wrap .sect-favorite li > a > span {position:absolute; top:0; right:2px; font-family:verdana, sans-serif; line-height:1;}
.favorite-wrap .sect-favorite li > a > span > em {font:0/0 a; zoom:1;}
.favorite-wrap .sect-favorite > button[type='button'] {overflow:hidden; position:absolute; top:0; left:794px; width:49px; height:49px; background:#636162 url('https://img.cgv.co.kr/r2014/images/common/btn/btn_plus.gif') 0 0 no-repeat ; border:2px solid #6e6c6d; line-height:49px; text-indent:100%; white-space:nowrap; text-align:center;}
.favorite-wrap .sect-favorite > button[type='button'].setting {background:#636162 url(https://img.cgv.co.kr/r2014/images/common/ico/icon_setting02.png) no-repeat 50% 50%}

.favorite-wrap .sect-city {height: 42px;margin-top: 18px;border-top:2px solid #727171;border-bottom:2px solid #727171;}
.favorite-wrap .sect-city > ul {position:relative;}
.favorite-wrap .sect-city > ul > li > a {padding:0 19px;color:#dbdbdb;font-size:14px;line-height: 42px;text-align:center;}
.favorite-wrap .sect-city > ul .area {display:none; position:absolute;top:50px;left:10px;width:854px;}
.favorite-wrap .sect-city > ul > li.on .area {display:block;}
.favorite-wrap .sect-city > ul > li * li {margin:6px 20px 0 0;}
.favorite-wrap .sect-city > ul > li * li > a {position:relative; padding:0;font-size:12px;color:#b9b9b9;line-height: 31px;text-align:left;}
.favorite-wrap .sect-city > ul > li * li > a:before {
	display:inline-block; content:''; width:1px; height:12px; background:#b9b9b9;
	position:absolute; right:-11px; top:50%; margin-top:-6px;
}
.favorite-wrap .sect-city > ul > li * li:last-child > a:before {display:none;}

.favorite-wrap .sect-city > ul > li * li.on > a,
.favorite-wrap .sect-city > ul > li * li.on > a:hover,
.favorite-wrap .sect-city > ul > li * li.on > a:focus {background:none;}
.favorite-wrap .sect-city ul > li.on > a,
.favorite-wrap .sect-city ul > li a:hover,
.favorite-wrap .sect-city ul > li a:focus {color:#fff !important;}

/* 영화별 상영시간표 */
.favorite-wrap .cols-movies {zoom:1; margin-top:20px;}
.favorite-wrap .cols-movies:after {content:''; clear:both; display:block;}
.favorite-wrap .cols-movies h3 {display:none;}
.favorite-wrap .col-movie, .favorite-wrap .col-movie-lst, .favorite-wrap .box-movie-type {float:left;}
.favorite-wrap .col-movie {margin-right:22px;}
.favorite-wrap .col-movie .box-image img {width:185px; height:260px;}
.favorite-wrap .col-movie .box-contents {width:185px}
.favorite-wrap .col-movie .box-contents > span,
.favorite-wrap .col-movie .box-contents > span > span {display:block;}
.favorite-wrap .col-movie .box-contents > span > span {margin-top:2px;}
.favorite-wrap .col-movie .box-contents > span > em {display:inline;}
.favorite-wrap .col-movie .box-contents {margin-top:10px; color:#bdbdbb; font-weight:500; font-size:12px;}
.favorite-wrap .col-movie-lst {overflow:hidden; width:325px; height:287px;}
.favorite-wrap .col-movie-lst ul > li {margin-bottom:1px;}
.favorite-wrap .col-movie-lst ul > li > a .ico-grade {display:inline-block; position:static; margin-right:6px; vertical-align:middle;}
.favorite-wrap .col-movie-lst ul > li > a {display:block; width:268px; height:35px; padding:0 0 0 10px; color:#fff; line-height:35px;}
.favorite-wrap .col-movie-lst ul > li > a strong {display:inline-block; overflow:hidden; max-width:181px; margin-right:6px; font-weight:500; font-size:13px; text-overflow:ellipsis; vertical-align:middle; white-space:nowrap;}
.favorite-wrap .col-movie-lst li > a:hover,
.favorite-wrap .col-movie-lst li > a:focus,
.favorite-wrap .col-movie-lst li.on > a {background:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_bar_on.png) no-repeat 0 0;}
.favorite-wrap .col-movie-lst li > a .round.red1{ line-height:15px; font-size:10px;  font-family:verdana, sans-serif; font-weight:bold;}
.favorite-wrap .col-movie-lst li > a .round.red1:before{ background-color:#322f30;}
.favorite-wrap .col-movie-lst li > a .round.red1:after{ background-color:#322f30;}
.favorite-wrap .col-movie-lst li > a .round.red1 > *:before{ background-color:#322f30;}
.favorite-wrap .col-movie-lst li > a .round.red1 > *:after{ background-color:#322f30;}
.favorite-wrap .col-movie-lst li > a .cgvIcon.etc{vertical-align:middle}
.favorite-wrap .col-movie-lst li.on > a .round.red1:before, .favorite-wrap .col-movie-lst li > a:hover .round.red1:before{ background-color:#0b0a0b;}
.favorite-wrap .col-movie-lst li.on > a .round.red1:after, .favorite-wrap .col-movie-lst li > a:hover .round.red1:after{ background-color:#0b0a0b;}
.favorite-wrap .col-movie-lst li.on > a .round.red1 > *:before, .favorite-wrap .col-movie-lst li > a:hover .round.red1 > *:before{ background-color:#0b0a0b;}
.favorite-wrap .col-movie-lst li.on > a .round.red1 > *:after, .favorite-wrap .col-movie-lst li > a:hover .round.red1 > *:after{ background-color:#0b0a0b;}


.favorite-wrap .box-movie-type {position:relative; width:299px; height:247px; padding:10px 0 30px 34px; background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_box_movie.png) no-repeat 0 0;}
.favorite-wrap .box-movie-type li {float:left; margin:0 1px 3px 0; overflow:hidden}
.favorite-wrap .box-movie-type li > a {display:block; width:135px; height:35px; padding-left:10px; font-weight:500; font-size:12px; line-height:35px;}
.favorite-wrap .box-movie-type li > a:hover,
.favorite-wrap .box-movie-type li > a:focus,
.favorite-wrap .box-movie-type li.on > a {background:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_bar_on.png) no-repeat 0 -40px; color:#fff;}

/* Showtimes Eng Type */
#contents.eng .favorite-wrap .sect-favorite li > a {overflow:hidden; width:101px; padding:0 3px; text-overflow:ellipsis; white-space:nowrap;}

#contents.eng .favorite-wrap .sect-city ul > li > a {padding:0; font-size:11px;}
#contents.eng .favorite-wrap .sect-city ul > li .area{top:42px}
#contents.eng .favorite-wrap .sect-city ul > li .area > ul > li{margin:0 25px 0 0}

.showtimes-wrap.eng .slider li > .day span, #contents.eng .slider li > .day em {font-family:verdana, sans-serif;}
.showtimes-wrap.eng .slider li > .day em {left:9px;}
.showtimes-wrap.eng .sect-guide .descri-timezone p {margin-left:8px;}
.subtitles-wrap {width:980px; height:450px;}
.subtitles-wrap .tab-menu {left:50%; margin-left:-437px;}

/* table module */
/* .table-dotline{} */
.table-dotline table{ border-collapse:collapse; border-top:1px solid #797979; border-bottom:1px solid #cccbc2;}
.table-dotline .col1{ width:150px;}
.table-dotline th, .table-dotline td{ padding:15px 0; background:url('https://img.cgv.co.kr/r2014/images/common/bg/dot_horizontal.gif') 0 0 repeat-x; color:#333333; }
.table-dotline tr:first-child th, .table-dotline tr:first-child td{ background:none;}
.table-dotline th{font-weight:500;}
.table-dotline td > em{ color:#666666;}
.preloading { background-color:#fdfcf0; opacity:0.3}


/* 404 에러페이지 */
.sect-error,
.sect-use-stop {width:980px; height:280px; padding-top:150px; text-align:center;margin:0 auto}
.sect-error > h3,
.sect-use-stop > h3 {height:auto; margin:0; background:none; line-height:1.2; text-align:center; padding-top:50px; color:#222222; font-size:23px;}
.sect-error > h3 {background:url('https://img.cgv.co.kr/r2014/images/common/ico/ico_info.png') 50% 0 no-repeat;}
.sect-use-stop > h3 {background:url('https://img.cgv.co.kr/r2014/images/common/ico/ico_caution.gif') 50% 0 no-repeat;}
.sect-error > p,
.sect-use-stop > p {margin:12px 0 40px; color:#222222; font-size:13px; line-height:1.4;}
.sect-error > .round > span,
.sect-use-stop > .round > span {padding:0 13px;}
.sect-error a.second {margin: 0 6px;}


/* 메인 공지사항 */
.skipnaiv+.layer-wrap {position:absolute; top:478px; left:auto; right:20px; width:280px; height:210px; background:white; z-index:100}
.skipnaiv+.layer-wrap .layer-contents {width:280px}
.noti-main {position:relative; height:210px}
.noti-main .slider {overflow:visible; }
.noti-main button[type=button].btn-pause{left:auto !important; top:auto !important; right:46px; bottom:10px; width:18px; height:19px; background:#fff url('./../images/main/ico/mainPop_pause.png') center scroll no-repeat; border:1px solid #dadada; z-index:12}
.noti-main button[type=button].btn-play{left:auto !important; top:auto !important; right:46px; bottom:10px; width:18px; height:19px; background:#fff url('./../images/main/ico/mainPop_play.png') center scroll no-repeat; border:1px solid #dadada; z-index:12}
.layer-contents .noti-main .slider>button[type=button].btn-next,
.layer-contents .noti-main .slider>button[type=button].btn-prev {top:auto; bottom:10px; left:auto !important; width:18px; height:19px; margin:0; background:#fff url('./../images/main/ico/mainPop_arrow.png') center scroll no-repeat; border:1px solid #dadada}
.layer-contents .noti-main .slider>button[type=button].btn-prev {right:27px; transform:rotate(180deg)}
.layer-contents .noti-main .slider>button[type=button].btn-next {right:10px}
.noti-main .slider .noti-num {position:absolute; bottom:10px; right:77px; color:#fff; font-family:'Verdana', 'Geneva', 'sans-serif'; font-weight:700; text-align:right; letter-spacing: 2px; z-index:10}
.noti-main .slider .noti-num strong {font-family:Verdana, Geneva, sans-serif; font-weight:700; color:#fb4357}
.noti-main .slider .item {background: #fff; text-align:left}
.layer-contents .noti-main .slider .item:before {content: normal}

.noti-footer{height:35px; font-weight:500; line-height:35px; background-color:#515151}
.noti-footer input[type=checkbox]{line-height:30px}
.noti-footer .check {float:left; display: block; padding-left: 3px; color: #ececec; font-weight:500;}
.noti-footer .check label {font-size:12px;}
.noti-footer .btn-close {right:0; top: auto;width: auto; padding:0 9px; font-weight:500; font-size:12px; color:#fff; line-height:35px; background:none}


/*평점 모아보기 추가 140912*/
.layer-wrap.review_pop {margin-left: -426px;margin-top: -934px;}
div#review_pop {margin: 0!important;position: static!important;}
.layer-wrap.review_pop .layer-contents {width: 801px;height: auto;margin:20px 24px;}
.layer-wrap.review_pop .pop-contents {padding: 21px 60px 35px;}
.layer-wrap.review_pop .pop-contents h4 {font-size: 22px;line-height: 35px;color: #222;border-bottom: 3px solid #333;margin-bottom: 20px;}
.layer-wrap.review_pop span.thumb-image {float: left;}
.review_pop_con {margin-left: 110px;position:relative;}
.review_pop_con h3 {font-size: 18px;color: #222;margin: 0;text-align: left;background: none;font-weight:500;line-height: 29px;}
.review_pop_con ul.writerinfo {position: absolute;top: 8px;right: 0;}
.review_pop_con .box-comment {margin-top: 6px;font-size: 12px;line-height: 19px;font-weight:500;height: 57px;overflow: hidden;text-overflow: ellipsis;}
.layer-wrap.review_pop .popwrap div ul.review_list >li {clear: both;padding-top: 12px;margin-top: 12px;border-top: 1px solid #cfcfcd;}
.layer-wrap.review_pop .popwrap div ul>li ul li, .layer-wrap.review_pop .popwrap div ul>li:first-child {padding-top: 0;margin-top: 0;border-top: none;}
.layer-wrap.review_pop .popwrap div ul>li ul.writerinfo li {clear: none;}
.layer-wrap.review_pop .paging {border-top: 1px solid #969695;padding-top: 20px;}
.review_pop_btn {position:absolute; background-image:url(https://img.cgv.co.kr/r2014/images/sprite/sprite_btn.png); background-repeat:no-repeat; font:0/0 a; zoom:1;overflow:hidden; top:50%; width:26px; height:52px; text-indent:100%; white-space:nowrap; margin-top:-26px;}
.review_pop_btn.btn-prev {left:19px; background-position:0 -97px;}
.review_pop_btn.btn-prev.dim {background-position:0 -155px;}
.review_pop_btn.btn-next {right:19px; background-position:-30px -97px;}
.review_pop_btn.btn-next.dim {background-position:-30px -155px;}
.layer-wrap.review_pop .layer-contents .btn-close {right: 40px;top: 40px;}

img.review_bg {position: absolute;top: 0;}
img.review_bg.bg_top {/*top:0;left:24px;right:22px;*/position:static;margin-top: -25px;margin-left: -29px;}
img.review_bg.bg_bottom {/*top:auto!important;bottom:0;left:24px;right:22px;*/position:static!important;margin-left: -26px;}
.review_bg.bg_left {top:0;left:-24px;right:auto!important;bottom:0;height:100%;width: 24px;}
.review_bg.bg_right {top:0;left:auto!important;right:-24px;bottom:0;height:100%;width: 24px;}
.review_bg.bg_left img, .review_bg.bg_left img {height:100%;display: block;}
span.review_bg.bg_left, span.review_bg.bg_right {display: block;}
html.review_all, html.review_all body {background: transparent;}

/*메인 빅배너 개인화영역 140923*/
p.main_banner_text {position: absolute;left: 614px;top: 226px;font-size: 13px;color: #553124;line-height: 22px;text-align: left;font-weight:500;letter-spacing: -0.03em}
.item-wrap.on p.main_banner_text {z-index: 10}
.item-wrap p.main_banner_text span.col_red {color:#ce0505;font-weight:500;}
.item-wrap p.main_banner_text .inner_wrap {padding-right:100px;display: block;}
.item-wrap p.main_banner_text .mt15 {display: inline-block;margin-top: 13px;}

/*메인 빅배너 개인화영역 V2 1602*/
p.main_banner_text2 {position: absolute;left: 160px;top: 260px;width:265px;font-size: 13px;color: #553124;line-height: 22px;text-align: center;font-weight:500;letter-spacing: -0.03em}
p.main_banner_text2 strong {font-size:22px;line-height:1.3}
p.main_banner_text2.type1 {color:#497b67}
p.main_banner_text2.type2 {color:#1a3849;width:270px;left:177px}
p.main_banner_text2.type3 {color:#29343d;width:247px;left:203px;top:250px}
p.main_banner_text2.type4 {color:#5a3a4e}
/*My CGV - 취소내역 예매 환불규정 툴팁 추가*/

/*My CGV - 취소내역 예매 환불규정 툴팁 추가*/
.sect-mycgv-cancle .tbl-data tbody td.mv_payment {width: 24%;padding-right: 50px;overflow: visible;}
.sect-mycgv-cancle td.mv_cancel_date {width: 15%;}
.cancel_tooltip span {display: block;}
.cancel_tooltip {position: relative;padding-right: 26px;}
.i_cancel_wrap {display: none;}
a.ico_cancel_i {position: absolute;top: 50%;right: 0;margin-top: -8px;}
.cancel_tooltip .tooltip_con {text-indent: -9999px;}
.cancel_tooltip.cardandphone .i_cancel_wrap, .cancel_tooltip.card .i_cancel_wrap, .cancel_tooltip.phone .i_cancel_wrap, .cancel_tooltip.banking .i_cancel_wrap {display: block}

/*하단 카드와 휴대폰 결제 동시 진행시 팝업은 이미지받으면 수정예정*/
.cancel_tooltip.cardandphone a.ico_cancel_i:hover .tooltip_con {display: block;width: 293px;height: 217px;background:url(http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/cancel_tooltip_cardandphone.png) no-repeat 0 0;left: -27px;top: -217px}

.cancel_tooltip.card a.ico_cancel_i:hover .tooltip_con {display: block;width:293px;height:160px;background:url(http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/cancel_tooltip_card.png) no-repeat 0 0;left: -27px;top: -157px;}
.cancel_tooltip.phone a.ico_cancel_i:hover .tooltip_con {display: block;width:293px;height:143px;background:url(http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/cancel_tooltip_phone.png) no-repeat 0 0;left: -27px;top: -143px;}
.cancel_tooltip.banking a.ico_cancel_i:hover .tooltip_con {display: block;width:293px;height:281px;background:url(http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/cancel_tooltip_banking.png) no-repeat 0 0;left: -27px;top: -281px;}
/*로그인 세션 만료*/
.sect-logout .btn_area_logout {margin-top:35px;}
.sect-logout .btn_area_logout p a span {padding: 0 24px;}
.sect-logout .btn_area_logout p a.btn_red {margin-left:5px;}
/*로그인 세션만료 팝업 */
.layer-wrap.pop_corp_session.off,.layer-wrap.pop_corp_session {display: none;}
.layer-wrap.pop_corp_session.on {display: block;}
.layer-wrap.pop_corp_session.on {position: fixed;}
.pop_corp_session .pop_wrap {position: relative;padding: 5px;background-color: #333;font-size:14px;line-height:22px;text-align: left;}
.layer-wrap.pop_corp_session h1{height: 50px;line-height: 50px;padding-left: 19px;border: 1px solid #707070;color: #f8f8f8;font-weight:300;font-size: 22px;}
.layer-wrap.pop_corp_session .pop-contents{margin-top: 5px;padding:70px 40px 30px;background-color: #f6f6f4;color: #333;}
.col_red {color:#fb4357;}
.layer-wrap.pop_corp_session .ss_con_wrap {background: url(http://img.cgv.co.kr/image_gt/company/ico_warning_session.png) no-repeat 33px 0;width: 274px;padding: 10px 0 60px 153px;}
.layer-wrap.pop_corp_session .ss_con_wrap p {font-size: 14px;}
.layer-wrap.pop_corp_session .ss_con_wrap h5 {margin-bottom: 9px;font-size: 16px;}
.layer-wrap.pop_corp_session .ss_btn_wrap {text-align: center;font-size: 13px;}
.layer-wrap.pop_corp_session .ss_btn_wrap a.round.inblack {margin-right:2px;}
.btn-close, .layer-wrap .popwrap button[type='button'].btn-close{display: block;position: absolute;top: 20px;left: auto;right: 20px;width: 18px;height: 18px;background: url(https://img.cgv.co.kr/r2014/images/sprite/sprite_btn.png) no-repeat -72px -62px;border: none;font-size: 0; line-height:0;zoom: 1;}
.layer-wrap.pop_corp_session {width: 518px;height: 340px;margin-left: -259px;margin-top: -170px;}
/* 포토티켓 개인정보 취급방침 */
.layer-wrap.photi_agree {position:fixed;width:650px;margin-left:-325px;margin-top:-144px}

/* 클럽 가입신청팝업 및 탈퇴하기팝업 */
.layer-wrap.clubtype {display:none;}
.layer-wrap.clubtype .pop-contents {padding-top:30px; text-align:center; font-weight:500;}
.layer-wrap .pop-hd-msg {padding-bottom:25px; margin-bottom:30px; border-bottom:1px dashed #ccc9c7;}
.layer-wrap .pop-hd-msg p {font-size:16px; letter-spacing:-0.5px;}
.layer-wrap .pop-hd-msg p .em-txt {display:block; font-size:22px; margin-top:4px;}

.layer-wrap .pop-bd-msg p {font-size:15px; letter-spacing:-0.5px;}

.layer-wrap.clubtype .inpbox {margin-top:20px;}
.layer-wrap.clubtype .inpbox:first-child {margin-top:0;}
.layer-wrap.clubtype .inpbox > label {display:block; margin-bottom:10px; font-size:13px;}
.layer-wrap.clubtype .inpbox > label {display:block; margin-bottom:10px;}
.layer-wrap.clubtype .inpbox > input[type=text],
.layer-wrap.clubtype .inpbox > input[type=password] {
	width:326px; height:37px; 
	line-height:37px; font-size:20px; 
	font-weight:500;
	border:2px solid #000;
	background:none;
}

.layer-wrap .emtxt {color:#0071c4;}
.layer-wrap .pop-confirmbox {margin-top:30px;}

.layer-wrap .btn_join {margin-top:15px; padding:2px; width:100%; color:#fff; font-size:16px; font-weight:500; background-color:#e91400;}
.layer-wrap .btn_join > span {display:block; height:36px; line-height:36px; border:1px solid #f27365;}
.layer-wrap.clubtype .btn_join {width:260px;}
.layer-wrap div.btn_join > input {display:block; width:100%; color:#fff; font-size:16px; height:36px; line-height:36px; font-weight:500; border:1px solid #f27365;}


/* S COMMON */ 
.com_tabtype{position:relative; padding-top:75px}
.com_tabtype .tab_title{display:block; position:absolute; top:0; width:100%; padding:2px; text-align:center; border:1px solid rgb(77, 77, 75)}
.com_tabtype .tab_title span{display:block; height:37px; font-size:13px; color:#585856; line-height:37px; border:1px solid #d0cfca; pointer-events:none}

.com_tabtype .tab_title.active{padding:0; border:3px solid #2c2c2c}
.com_tabtype .tab_title.active span{border:1px solid transparent}

.com_tabtype .tab_title.active + .tab_content{display:block}
.com_tabtype .tab_content{display:none}

.com_tabtype.unit2 .tab_title{width:479px}
/* .com_tabtype.unit2 .tab_title.tit01{} */
.com_tabtype.unit2 .tab_title.tit02{left:495px}

/* E COMMON */ 

/* S 회사소개 */
.coexist{padding:60px 0;}
.coexist .cyberInfo_wrap{padding:45px 50px; border:1px solid rgba(212, 207, 193, 0.46)}
.coexist .cyberInfo_wrap strong{font-size:15px; color:#71481d}
.coexist .cyberInfo_wrap .cyberInfo_list{overflow:hidden}
.coexist .cyberInfo_wrap .cyberInfo_list dt{float:left; width:100%; margin-top:20px; padding-bottom:3px; font-weight:bold; font-size:13px; color:#222; line-height:20px}
.coexist .cyberInfo_wrap .cyberInfo_list dd{float:left; width:100%; font-size:13px; color:#3b3926; line-height:20px}

.coexist .cyberReport_wrap{overflow:hidden; position:relative; padding:23px 118px 24px 80px; border:1px solid rgba(212, 207, 193, 0.46)}
.coexist .cyberReport_wrap .cyberReport_list_wrap{float:left}
.coexist .cyberReport_wrap .cyberReport_list_wrap .cyberReport_list{margin-top:20px; font-size:15px; color:#3b3926; line-height:40px}
.coexist .cyberReport_wrap .cyberReport_list_wrap .cyberReport_list li{position:relative; padding-left:13px}
.coexist .cyberReport_wrap .cyberReport_list_wrap .cyberReport_list li:before{content:''; display:block; position:absolute; left:0; top:50%; width:4px; height:4px; margin-top:-2px; background-color:#5d5d5d; border-radius:50%}
.coexist .cyberReport_wrap .cyberReport_list_wrap .cyberReport_list li address{display:inline-block; font-style:normal}
.coexist .cyberReport_wrap .cyberReport_list_wrap .cyberReport_comment{font-size:13px; color:#fb4357; line-height:35px; letter-spacing:-0.048em}
.coexist .cyberReport_wrap .btn_cyberReport{float:right}
   .movie-content {
    flex: 0 0 25%; /* 4개의 열로 나누기 위해 25%의 너비 할당 */
    box-sizing: border-box; /* 요소의 패딩과 테두리를 포함한 전체 너비를 사용하도록 함 */
    padding: 10px; /* 각 요소 주위에 일정한 간격을 유지 */
    }
    .movie-content a {
    margin-right: 10px; /* 오른쪽 여백 추가 */
    }

    .movie-class {
    display: flex;
    flex-wrap: wrap; /* 이 속성을 추가하여 요소가 넘칠 때 다음 줄로 넘어갈 수 있도록 함 */
    }
    img{
        
        width: 200px;
        height: 290px;
    }
    h3{
        background: none !important;
    }
    .nav::before{
        display: none;
    }
    .list-text {
        margin-top: 100px;
        font-size: 1.5em;
        padding: 10px;
    }
    .event-list{
        display: flex;
        max-width: 300px;
    }
    .event-pic{
        width: 300px;
        height: 250px;
        margin: 10px;
    }
    .pic-head{
        margin-top: -10px;
        color: black;
        font-weight: 600;
        font-size: 1.2em;
    }
    .pic-content{
        margin-top: -10px;
        text-align: center;
    }
    .special-head {
        display: flex;
    }
    .special-pic {
        margin: 10px;
        width: 500px;
        height: 280px;
        transition: all 0.3s ease;
    }
    .special-content {
        margin: 10px;
    }
    .special-content > li {
        text-align: center;
    }
    .special-content > li > a {
        margin-top: 10px;
        margin-left: 60px;
        padding: 10px;
        font-size: 2.3em;
        line-height: 70px;
        color: black;
    }
.age-all{
            float: left;
            border: solid 1px;
            background-color: #269C56;
            color: white;
            padding: 3px 2px;
            font-weight: 600;
            font-size: 0.85em;
    }
    .age-12{
    	float: left;
            border: solid 1px;
            background-color: #E9B62F;
            color: white;
            padding: 3px 2px;
            font-weight: 600;
            font-size: 0.9em;
    }
    .age-15{
    float: left;
            border: solid 1px;
            background-color: #DD742F;
            color: white;
            padding: 3px 2px;
            font-weight: 600;
            font-size: 0.9em;
    }
    .age-19{
    float: left;
            border: solid 1px;
            background-color: #D92B35;
            color: white;
            padding: 3px 2px;
            font-weight: 600;
            font-size: 0.9em;
    }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const imgElement = document.querySelector('.special-pic');
            const items = document.querySelectorAll('.special-content li');
        
            items.forEach((item) => {
                item.addEventListener('mouseover', function() {
                    switch (item.className) {
                        case 'a':
                            imgElement.src = 'https://img.cgv.co.kr//Front/Main/2021/1209/16390080561620.png';
                            break;
                        case 'b':
                            imgElement.src = 'https://img.cgv.co.kr//Front/Main/2022/0616/16553622935690.png';
                            break;
                        case 'c':
                            imgElement.src = 'https://img.cgv.co.kr//Front/Main/2021/1130/16382612660240.png';
                            break;
                        case 'd':
                            imgElement.src = 'https://img.cgv.co.kr//Front/Main/2021/1130/16382612660560.png';
                            break;
                    }
                });
            });
        
            items.forEach((item) => {
                item.addEventListener('mouseout', function() {
                    imgElement.src = 'https://img.cgv.co.kr//Front/Main/2021/1209/16390080561620.png'; // 기본 이미지 경로로 변경
                });
            });
        });
        </script>
        
</head>
<body>

<!-- Contaniner -->
<div id="contaniner" class="">
    <!-- Contents Area -->
    <div id="contents" class=""> <!-- Movie List Start -->
       
        <div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

		<!-- Contents Area -->
		 <div id="contents" class="">
        
            
            <!-- Contents Start -->
			

<!-- 실컨텐츠 시작 -->
<div class="wrap-movie-detail" id="select_main">

    
<!--
<div class="tit-heading-wrap">
    <h3>영화상세</h3>
</div>
    //-->
<div class="sect-base-movie">
    <h3><strong>분노의 강</strong>기본정보</h3>
    <div class="box-image">
        <a href="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88218/88218_150.jpg" title="포스터 크게 보기 새창" target="_blank">
            <span class="thumb-image"> 
                <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88218/88218_150.jpg" alt="인사이드 아웃 2 포스터 새창" onerror="errorImage(this)">
                <span class="ico-posterdetail">포스터 크게 보기</span>
                <!-- 영상물 등급 노출 변경 2022.08.24 -->
                <i class="cgvIcon etc ageAll">All</i>
                <!--<span class="ico-grade All"> All</span> -->
            </span> 
        </a> 
    </div>
    <div class="box-contents">
        <div class="title"> 
            <span class="age-12">12</span><strong>분노의 강</strong>
            <em class="round lightblue"><span>현재상영중</span></em>
            
            
            <p>The River of Wrath</p>
        </div>
        <div class="score"> 
            <strong class="percent">예매율&nbsp;<span>0.9%</span></strong>
            <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->            
            <div class="egg-gage small">
                                            <span class="egg great"></span>
                                        </div>
        </div>
        <!-- 떨어지는 얘 이전 요소에 class=on을 넣는다 -->
        <div class="spec">
            <dl>
                <dt>감독 :&nbsp;</dt>
                <dd>
                    
                        
                        <a href="/movies/persons/?pidx=124244">윤형철</a>                    
                        
                </dd>
                
                <dd>
                    
                </dd>

                <dt>&nbsp;/ 배우 :&nbsp;</dt>
                <dd class="on">
                    
                        
                        <a href="/movies/persons/?pidx=33445">김강일</a>                    
                        
                        ,&nbsp;
                        <a href="/movies/persons/?pidx=123816">윤경호</a>                    
                        
                        ,&nbsp;
                        <a href="/movies/persons/?pidx=17244">김소빈</a>                    
                        
                        ,&nbsp;
                        <a href="/movies/persons/?pidx=124563">한유은</a>                   
                        
                </dd>

                <dt>장르 :&nbsp;드라마</dt> 
                <dd></dd>
                <dt>&nbsp;/ 기본 정보 :&nbsp;</dt>
                <!-- 2023.04.27 영화상세 등급 표기 수정--> 
                <!--<dd class="on">All,&nbsp;96분,&nbsp;미국</dd>-->
                <dd class="on">12세이상관람가,&nbsp;87분,&nbsp;한국</dd>
                <dt>개봉 :&nbsp;</dt>
                <dd class="on">2024.05.29</dd>


            

            </dl>
        </div>

        <span class="like">
            <a class="link-reservation" href="/ticket/?MOVIE_CD=20036833&amp;MOVIE_CD_GROUP=20034989">예매</a> 
        
        </span>

    </div>
</div><!-- .sect-base -->

    <div class="cols-content" id="menu">
        <div class="col-detail">
            
            <div class="sect-story-movie">
                “ 행복하게 살자, 우리”<br>
				모두가 모르는 반쪽의 진실<br><br>
				
				아버지 ‘기철’은 소중한 가족과<br>
				철책의 반대편, 내일이 있는 삶을 꿈꾸며<br>
				목숨 건 모험에 뛰어든다.<br><br>
				
				하지만 그의 계획은 수포로 돌아가고,<br>
				아들 ‘철수’만이 살아남는다.<br><br>
				
				그로부터 10년 후, 모든 걸 잃은 ‘철수’ 앞에<br>
				한줄기 빛 ‘연희’가 나타나고<br>
				‘철수’는 다시 새로운 세상을 꿈꾸게 되는데…
			</div>
  





            
            <!--/ Contents End -->
		 </div>
        
        
        </div></div></div></div>  
        
    </div><!-- /Contents Area -->
    
</div>

<!-- S 예매하기 및 TOP Fixed 버튼 -->
<div class="fixedBtn_wrap">
    <a href="#" class="btn_fixedTicketing">예매하기</a>
    <a href="#none" class="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동"></a>
</div>

<!-- S Footer -->
<footer>
    <ul class="policy_list">
        <li><a href="http://corp.cgv.co.kr/company/" target="_blank">회사소개</a></li>
        <li><a href="http://corp.cgv.co.kr/company/sustainabilityStrategy/strategy.aspx" target="_blank">지속가능경영</a></li>
        <li><a href="http://corp.cgv.co.kr/company/ir/financial/financial_list.aspx" target="_blank">IR</a></li>
        <li><a href="http://corp.cgv.co.kr/company/recruit/step/default.aspx" target="_blank">채용정보</a></li>
        <li><a href="http://corp.cgv.co.kr/company/advertize/ad_Default.aspx" target="_blank">광고/제휴/출점문의</a></li>
        <li><a href="http://www.cgv.co.kr/rules/service.aspx">이용약관</a></li>
        <li><a href="http://www.cgv.co.kr/rules/organized.aspx">편성기준</a></li>
        <li><a href="http://www.cgv.co.kr/rules/privacy.aspx"><strong>개인정보처리방침</strong></a></li>
        <li><a href="http://www.cgv.co.kr/rules/disclaimer.aspx">법적고지</a></li>
        <li><a href="http://www.cgv.co.kr/rules/emreject.aspx">이메일주소무단수집거부</a></li>
        <li><a href="http://corp.cgv.co.kr/company/ethicalManagement/ceoMessage.aspx" target="_blank">윤리경영</a></li>
        <li><a href="/company/cyberAudit.aspx" class="empha-red">사이버감사실</a></li>
    </ul>
    <article class="company_info_wrap">
        <section class="company_info">
            <address>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
            <dl class="company_info_list">
                <dt>대표이사</dt>
                <dd>허민회</dd>
                <dt>사업자등록번호</dt>
                <dd>104-81-45690</dd>
                <dt>통신판매업신고번호</dt>
                <dd>2017-서울용산-0662 <a href="#none" onclick="goFtc()" class="btn_goFtc">사업자정보확인</a><a></a></dd>
            </dl>
            <dl class="company_info_list">
                <dt>호스팅사업자</dt>
                <dd>CJ올리브네트웍스</dd>
                <dt>개인정보보호 책임자</dt>
                <dd>도형구</dd>
                <dt>대표이메일</dt>
                <dd>cjcgvmaster@cj.net</dd>
            </dl>
            <p class="copyright">© CJ CGV. All Rights Reserved</p>
        </section>
    </article>
</footer>

</body>
</html>
