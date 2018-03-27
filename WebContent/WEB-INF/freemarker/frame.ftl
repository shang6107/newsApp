<#import "spring.ftl" as spring/>
<#--<#assign security=
JspTaglibs["/WEB-INF/freemarker/security.tld"]-->
<#--http://www.springframework.org/security/tags/>-->
<#assign path = (Request.request.getContextPath())!"">

<#assign security=JspTaglibs["http://www.springframework.org/security/tags"]/>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="${path!''}/">
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="static/css1/identify.css"/>
    <link rel="stylesheet" type="text/css" href="static/js/skin/layer.css"/>
    <link rel="stylesheet" type="text/css" href="static/css1/layout.css"/>
    <link rel="stylesheet" type="text/css" href="static/css1/layui.css"/>
    <link rel="stylesheet" type="text/css" href="static/css1/style.css"/>
    <link rel="stylesheet" type="text/css" href="static/css1/login.css"/>
    <link rel="stylesheet" type="text/css" href="static/css1/control_index.css"/>
    <link rel="stylesheet" type="text/css" href="static/css1/myStyle.css"/>
    <script type="text/javascript" src="static/js/jquery.js"></script>
    <script type="text/javascript" src="static/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="static/js/layer.js"></script>
    <script type="text/javascript" src="static/js/haidao.offcial.general.js"></script>
    <script type="text/javascript" src="static/js/select.js"></script>
    <script type="text/javascript" src="static/js/haidao.validate.js"></script>
    <script type="text/javascript" src="static/js/myJavaScript.js"></script>
</head>
<body>

<div class="view-topbar">
    <div class="topbar-console">
        <div class="tobar-head fl">
            <a href="logout" class="topbar-logo fl">
                <span><img src="static/img/logo.png" width="20" height="20"/></span>
            </a>
            <a href="index.html" class="topbar-home-link topbar-btn text-center fl"><span>管理控制台</span></a>
        </div>
        <h1 align="center" style="margin-top: 5px;line-height: inherit;color: whitesmoke">今日头条APP后台管理系统 V1.0</h1>
    </div>
    <div class="topbar-info">
        <ul class="fr">
            <li class="fl dropdown topbar-notice topbar-btn">
                <a href="javascript:void(0)" class="dropdown-toggle">
                    <span class="icon-notice"></span>
                    <span class="topbar-num have" id="msg-notice-span">0</span>
                    <!--have表示有消息，没有消息去掉have-->
                </a>
            </li>
            <!-- 					<li class="fl topbar-info-item strong">
            <div class="dropdown">
                <a href="#" class="dropdown-toggle topbar-btn">
                <span class="fl">工单服务</span>
                <span class="icon-arrow-down"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">我的工单</a></li>
                    <li><a href="#">提交工单</a></li>
                </ul>
            </div>
            </li>
             -->
            <li class="fl topbar-info-item">
                <div class="dropdown">
                    <a href="javascript:void(0)" class="topbar-btn">
                        <span class="fl text-normal">帮助与文档</span>
                        <span class="icon-arrow-down"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:void(0)">APP简介</a></li>
                        <li><a href="javascript:void(0)">开发人员简介</a></li>
                    </ul>
                </div>
            </li>
            <li class="fl topbar-info-item">
                <div class="dropdown">
                    <a href="javascript:void(0)" class="topbar-btn">
                        <span class="fl text-normal" id="current-user-span"></span>
                        <span class="icon-arrow-down"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="logout">退出</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</div>


<div class="view-body">
    <div class="view-sidebar">

        <div class="sidebar-content">

        <@security.authorize access="hasRole('ROLE_新闻管理员') or hasRole('超级管理员')">
            <div class="sidebar-nav news-menu">
                <div class="sidebar-title news-menu">
                    <a href="javascript:void(0)">
                        <span class="icon"><b class="fl icon-arrow-down"></b></span>
                        <span class="text-normal">新闻服务</span>
                    </a>
                </div>
                <ul class="sidebar-trans">
                    <li>
                        <a href="/news_management.html">
                            <b class="sidebar-icon"><img src="static/img/icon_author.png" width="16" height="16"/></b>
                            <span class="text-normal">新闻管理</span>
                        </a>
                    </li>
                    <li>
                        <a href="smsInfo.html">
                            <b class="sidebar-icon"><img src="static/img/icon_message.png" width="16" height="16"/></b>
                            <span class="text-normal">搜索引擎</span>
                        </a>
                    </li>
                </ul>
            </div>
        </@security.authorize>

        <@security.authorize access="hasRole('ROLE_用户管理员') or hasRole('超级管理员')">
            <div class="sidebar-nav user-menu">
                <div class="sidebar-title">
                    <a href="javascript:void(0)">
                        <span class="icon"><b class="fl icon-arrow-down"></b></span>
                        <span class="text-normal">用户中心</span>
                    </a>
                </div>
                <ul class="sidebar-trans">
                    <li>
                        <a href="userInfo.html">
                            <b class="sidebar-icon"><img src="static/img/icon_cost.png" width="16" height="16"/></b>
                            <span class="text-normal">账号管理</span>
                        </a>
                    </li>
                    <li>
                        <a href="identify.html">
                            <b class="sidebar-icon"><img src="static/img/icon_authentication.png" width="16"
                                                         height="16"/></b>
                            <span class="text-normal">实名认证</span>
                        </a>
                    </li>
                    <li>
                        <a href="message.html">
                            <b class="sidebar-icon"><img src="static/img/icon_news.png" width="16" height="16"/></b>
                            <span class="text-normal">用户信息</span>
                        </a>
                    </li>
                </ul>
            </div>
        </@security.authorize>

        <@security.authorize access="isAuthenticated()">
            <div class="sidebar-nav">
                <div class="sidebar-title">
                    <a href="javascript:void(0)">
                        <span class="icon"><b class="fl icon-arrow-down"></b></span>
                        <span class="text-normal">应用程序</span>
                    </a>
                </div>
                <ul class="sidebar-trans">
                    <li>
                        <a href="userInfo.html">
                            <b class="sidebar-icon"><img src="static/img/icon_cost.png" width="16" height="16"/></b>
                            <span class="text-normal">APP数据统计</span>
                        </a>
                    </li>
                    <li>
                        <a href="identify.html">
                            <b class="sidebar-icon"><img src="static/img/icon_order.png" width="16"
                                                         height="16"/></b>
                            <span class="text-normal">其他</span>
                        </a>
                    </li>

                </ul>
            </div>
        </@security.authorize>


            <#--  个人中心 移到页面右上角 -->
            <#--<div class="sidebar-nav">
                <div class="sidebar-title">
                    <a href="javascript:void(0)">
                        <span class="icon"><b class="fl icon-arrow-down"></b></span>
                        <span class="text-normal">个人中心</span>
                    </a>
                </div>
                <ul class="sidebar-trans">
                    <li>
                        <a href="userInfo.html">
                            <b class="sidebar-icon"><img src="static/img/icon_cost.png" width="16" height="16"/></b>
                            <span class="text-normal">账号信息</span>
                        </a>
                    </li>
                    <li>
                        <a href="identify.html">
                            <b class="sidebar-icon"><img src="static/img/icon_order.png" width="16"
                                                         height="16"/></b>
                            <span class="text-normal">修改密码</span>
                        </a>
                    </li>
                </ul>
            </div>-->



        </div>
    </div>
<#if (Session.SPRING_SECURITY_CONTEXT.authentication.principal.username)?exists>
    <script>
        $("#current-user-span").text("${Session.SPRING_SECURITY_CONTEXT.authentication.principal.username!''}");
    </script>
</#if>
    <div class="view-product background-color" style="overflow: hidden">

    <#--<#if Session.manager?exists>
    <#assign mgr = Session.manager/>
<#else >
<div class="go-login" style="margin: 50px auto;">
    <a id="go-login" href="login.html"><h3 style="color: #1E9FFF" align="center">
        您目前以游客身份访问，查看更多内容请先登录(<span id="countDown"></span> 点击手动返回登录页面)</h3></a>
</div>
<script>
    ($(function () {
                $(".view-topbar a,.sidebar-nav a").click(function () {
                    return false;
                });
            })
    );
    var countdown = 5;

    function settime(val) {
        if (countdown == 0) {
            location = "${path!''}/management-system/login.html";
        } else {
            $("#countDown").text(countdown);
            countdown--;
        }
        setTimeout(function () {
            settime(val)
        }, 1000)
    }

    settime(document.getElementById("countDown"));
</script>
</#if>-->
