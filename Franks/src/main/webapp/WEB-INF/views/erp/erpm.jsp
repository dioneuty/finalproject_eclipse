<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
   <!-- 모바일용웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- 안드로이드 홈화면추가시 상단 주소창 제거 -->
<meta name="mobile-web-app-capable" content="yes">
<!-- ios홈화면추가시 상단 주소창 제거 -->
<meta name="apple-mobile-web-app-capable" content="yes">

    <title>Main</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel='stylesheet' href='../resources/css/pop.css'>
<link rel='stylesheet' href='../resources/css/main.css'> 
<link rel='stylesheet' href='../resources/css/tooltip.css'>
<link rel='stylesheet' href='../resources/css/demo.css'>

<style type="text/css">        
    /* 왼쪽 내용 css */
    body{
    	overflow-x:hidden;
    	height: 120%;
    	min-width:405px;
    }
    .aside>div{
    	min-width:375px;         
        margin: 15px 2px;
       /* border-radius:10px; */
        background-color:white; 
        box-shadow: rgba(0, 0, 0, 0.2) 0px 3px 3px;
    }
    .myinfo{
        height:300px;
    }
    .msg{
        height:195px;
    }
    .ntc{
        height:205px;
    }
    
    /* 오른쪽 내용 css */
    .section>div{
        min-width:375px;
        /*border-radius:10px; */
        background-color:white; 
        box-shadow: rgba(0, 0, 0, 0.2) 0px 3px 3px;
    }
    .banner{
       margin: 0px 15px;
       height:150px;
       background-image: url("../resources/imgs/full.jpg");
       background-repeat: no-repeat;
       background-size: 100% 100%;
       text-indent: -9999px;   
    }
    .shopinfo{
       margin: 15px 15px;
    }
    
    /* 중간 탭메뉴 제목부분 css */
    .si_name{
        padding-top:10px;
        padding-left:20px;
        padding-right:50px;
    }
    
    /* 오른쪽 하단 공지사항,주문정보 부분 css */
    .pannel{
    	margin: 0px 15px;
    }
    .notice,.transfer{
        min-width:375x; 
        display:inline-block; 
        box-shadow:border-box;
    }
    .li-style1,.li-style2 {
    	width: 40px;
   		height: 40px;
   		line-height:0px;
   		margin-left:10px;
   		margin-right: 10px;
    	background-size: 100%;
    	background-repeat: no-repeat;
    }
    .notice-header{
    	width: 100%;
    	height: 49px;
    	line-height:49px;
    	box-sizing: border-box;
    	border-bottom: 1px #bbb solid;
    }
    .li-style1 {
    	background-image: url("../resources/imgs/m1.png");
    }
    .notice-cont{
    	padding-left:20px;
    	box-sizing: border-box;
    	
    }
     .transfer-header{
    	height: 49px;
    	line-height:49px;
    	box-sizing: border-box;
    	border-bottom: 1px #bbb solid;
    }
   	.li-style2 {
    	background-image: url("../resources/imgs/m2.png");
    }
    .transfer-cont{
    	box-sizing: border-box;
    	
    }
    .navbar{
    	margin: 0px;
        width: 106%;
        margin-left:-3%;
        position: static;
        display: inline-block;
    }
    .navbar-nav{
        padding: 0;
        -ms-overflow-style: none;
    }
    /* 페이지에 스크롤 없애기
    ::-webkit-scrollbar {
		display:none;
	} 
	*/
    .navbar-header{
        display: inline-block;
        padding: 0;
    }
    .nav-tabs *{
    	letter-spacing: 0.5em;
    }
    .more {
    	float:right;
    	margin-right: 10px;
    	margin-top: 15px;
    	width:22px;
    	width:22px;
    }
    .icon{
    	display: inline-block;
    }
    #erp-logo {
    	width: 200px;
    }
</style>
</head>
<body onload="setTimeout(function() { window.scrollTo(0, 1) }, 100);">

 <!-- 전체 컨테이너 -->
   
    <div class="container-fluid">
       <!-- header -->
        <div class="row header hidden-md-down" >
            <!-- 모바일용 header -->
            <div class="col-lg-3 "><img alt="" src="../resources/imgs/erp-logo.png" id="erp-logo"> </div>
            <!-- pc용 header -->
            <div class="col-lg-4 hidden-md-down">${uname } 님 환영합니다.</div>
            <div class="col-lg-2 hidden-md-down"></div>
            <div class="col-lg-3 hidden-md-down text-right"><a href="/Frank">로그아웃 ></a></div>
        </div>
        <!-- header 끝 -->
        
        <!-- 메뉴 -->
        
        <div class="row menus">
            <div class="col-lg-12 menu1 ">
            <nav class="navbar navbar-default navbar-inverse" role="navigation">
            
            <div class="navbar-header hidden-md-up" style="width:100%;">
                <!-- 모바일용 버튼 -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-01">
                    <span class="sr-only">Toggle navigation</span>
                </button>
                
                <!-- home 아이콘 -->
                <a class="navbar-brand" href="/Frank/erp/erpm"><span class="icn-home"></span></a>
        </div>
            
            <div class="navbar-header hidden-sm-down">
                <!-- 모바일용 버튼 -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-01">
                    <span class="sr-only">Toggle navigation</span>
                </button>
                
                <!-- home 아이콘 -->
                <a class="navbar-brand" href="/Frank/erp/erpm"><span class="icn-home"></span></a>
            </div>
            
               <div class="collapse navbar-collapse" id="navbar-collapse-01">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown">재고관리<span class="icn-arrow-down5 arrowHeader"></span></a>
                        <span class="dropdown-arrow"></span>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="icon icon-barcode" style="display: inline-block"></span>&nbsp; 우리매장 재고</a></li>
                            <li><a href="#"><span class="icon icon-box-add" style="display: inline-block"></span>&nbsp; 입고 관리</a></li>
                            <li><a href="#"><span class="icon icon-box-remove" style="display: inline-block"></span>&nbsp; 출고 관리</a></li>
                        </ul>
                        <div class="clear"></div>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown">매출관리<span class="icn-arrow-down5 arrowHeader"></span></a>
                        <span class="dropdown-arrow"></span>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="icon icon-truck" style="display: inline-block"></span> &nbsp; 우리매장 매출</a></li>
                            <li><a href="#">메뉴별 매출</a></li>
                            <li><a href="#">기간별 매출</a></li>
                            <li><a href="#">매장별 매출</a></li>
                        </ul>
                        <div class="clear"></div>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown">주문<span class="icn-arrow-down5 arrowHeader"></span></a>
                        <span class="dropdown-arrow"></span>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="icon icon-truck" style="display: inline-block"></span> &nbsp; 주문내역</a></li>
                            <li><a href="#">Animation</a></li>
                            <li><a href="#">Bootstrap</a></li>
                        </ul>
                        <div class="clear"></div>
                    </li>
                    <li class="dropdown">
                    	<a data-toggle="dropdown" href="#">게시판<span class="icn-arrow-down5 arrowHeader"></span></a>
                        <span class="dropdown-arrow"></span>
                         <!-- 일반 드롭다운 메뉴 (메뉴가 하나씩 나옴) -->
                        <ul class="dropdown-menu">
                            <li><a href="../board/freeboard" title="Twitter"><span class="icn-document"></span> 자유게시판</a></li>
                            <li><a href="../board/nproduct" title="Facebook"><span class="icn-search"></span> 공지사항</a></li>
                            <li class="divider"></li>
                            <li><a href="#" target="_blank" title="Google+"><span class="icn-cmd"></span> 신메뉴 건의 게시판</a></li>
                        </ul>
                    </li>
                    <li><a href="alarm">알림 <span class="navbar-new discountBall">10</span></a></li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" href="#">직원관리<span class="icn-arrow-down5 arrowHeader"></span></a>
                        <span class="dropdown-arrow"></span>
                         <!-- 일반 드롭다운 메뉴 (메뉴가 하나씩 나옴) -->
                        <ul class="dropdown-menu">
                            <li><a href="member/memberList" title="Twitter"><span class="icn-twitter"></span> 직원추가</a></li>
                            <li><a href="#" target="_blank" title="Facebook"><span class="icn-facebook"></span> 매장추가</a></li>
                            <li class="divider"></li>
                            <li><a href="#" target="_blank" title="Google+"><span class="icn-googleplus"></span> 직원교육</a></li>
                            <li><a href="#" target="_blank" title="RSS" rel="nofollow"><span class="icn-rss"></span> 직원 교육확인</a></li>
                        </ul>
                    </li>

                </ul>
        </div>
            <!-- /.navbar-collapse -->
    </nav>
    <!-- /navbar -->
            </div>
        </div>       
        <!-- 메뉴 끝 -->
        
        <!-- content -->
        <div class="row content" >
           <!-- 왼쪽부분 aside -->
            <div class="col-lg-3 aside">
                <div class="myinfo">
                	<p></p>
                </div>
                <div class="msg hidden-md-down"> 수신메시지 </div>
                <div class="ntc hidden-md-down"> 알림 </div>
            </div>            
            <!-- aside 끝 -->
            
            <!-- 오른쪽 section 부분 -->
            <div class="col-lg-9 section">
                <!-- 오른쪽 상단 배너 -->              
                <div class="banner hidden-md-down"> banner </div>
                <!-- 오른쪽 중간 매장정보 부분 -->                
                <div class="shopinfo">
                    <!-- 매장정보 tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="si_name">매장 정보</li>
                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">기본 정보</a></li>
                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">매출 현황</a></li>
                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">재고 현황</a></li>
                    </ul>
                    <!-- Tab관련 내용 -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home">home <br/>a<br/>a<br/>a<br/>a<br/>a<br/>a<br/>a<br/>a<br/>a<br/>a<br/>a<br/></div>
                        <div role="tabpanel" class="tab-pane" id="profile">1</div>
                        <div role="tabpanel" class="tab-pane" id="messages">2</div>
                    </div>
                </div>
                <div class="row pannel">
                <!-- 공지사항 부분 -->
                <div class="notice col-lg-6">
                	<div class="notice-header"><img src="../resources/imgs/m1.png" class="li-style1">공지사항<img class="more" src="../resources/imgs/more.png"></div>
                	<div class="notice-cont">
                		<ul>
                			<li>1</li>
                			<li>2</li>
                			<li>3</li>
                			<li>4</li>
                			<li>5</li>
                			<li>6</li>
                		</ul>
                	</div>
                </div>
                <!-- 주문상태 부분 -->
                <div class="transfer col-lg-6">
                	<div class="transfer-header"><img src="../resources/imgs/m2.png" class="li-style2">주문정보<img class="more" src="../resources/imgs/more.png"></div>
                	<div class="transfer-cont">
                		<ul>
                			<li>1</li>
                			<li>2</li>
                			<li>3</li>
                			<li>4</li>
                			<li>5</li>
                			<li>6</li>
                		</ul>
                	</div>
                </div>
                </div>
            </div>
            <script type="text/javascript">
                $('#myTabs>li>a').click(function(e) {
                    e.preventDefault()
                    $(this).tab('show')
                });

            </script>
        </div>
        <!-- section 끝 -->
        <!-- content 끝 -->
        <!-- footer -->
        <div class="row footer" data-role="footer">
            <div class="col-lg-12">
                <p>Copyright © 2006-2017 MvnRepository. All rights reserved.</p>
                <p>Web site developed by @frodriguez Contact Us</p>
            </div>
        </div>
        <!-- footer 끝 -->
    </div>
    
    <!-- 전체 컨테이너 끝 -->
    <!-- 왼쪽 하단 pop메뉴 -->
    <nav class="menu">
       <input type="checkbox" href="#" class="menu-open" name="menu-open" id="menu-open" />
       <label class="menu-open-button" for="menu-open">
            <span class="lines line-1"></span>
            <span class="lines line-2"></span>
            <span class="lines line-3"></span>
        </label>

       <a href="#" class="menu-item blue"> <i class="fa fa-anchor"></i> </a>
       <a href="#" class="menu-item green"> <i class="fa fa-coffee"></i> </a>
       <a href="#" class="menu-item red"> <i class="fa fa-heart"></i> </a>
       <a href="#" class="menu-item purple"> <i class="fa fa-microphone"></i> </a>
       <a href="#" class="menu-item orange"> <i class="fa fa-star"></i> </a>
       <a href="#" class="menu-item lightblue"> <i class="fa fa-diamond"></i> </a>
    </nav>
</body>
</html>