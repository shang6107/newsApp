<#include "frame.ftl"/>


<div class="view-topbar">
    <div class="topbar-console">
        <div class="tobar-head fl">
            <a href="javascript:void(0)" class="topbar-logo fl">
                <span><img src="static/img/logo.png" width="20" height="20"/></span>
            </a>
            <a href="index.html" class="topbar-home-link topbar-btn text-center fl"><span>管理控制台</span></a>
        </div>
    </div>
    <div class="topbar-info">
        <ul class="fr">
            <li class="fl dropdown topbar-notice topbar-btn">
                <a href="javascript:void(0)" class="dropdown-toggle">
                    <span class="icon-notice"></span>
                    <span class="topbar-num have">0</span>
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
                        <li><a href="#">模板开发手册</a></li>
                        <li><a href="#">某某数据字典</a></li>
                    </ul>
                </div>
            </li>
            <li class="fl topbar-info-item">
                <div class="dropdown">
                    <a href="#" class="topbar-btn">
                        <span class="fl text-normal"><#if mgr??>${mgr.ngrNo!""}</#if></span>
                        <span class="icon-arrow-down"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="login.html">退出</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</div>


<div class="view-body">
    <div class="view-sidebar">
        <div class="sidebar-content">
            <div class="sidebar-nav news-menu">
                <div class="sidebar-title news-menu">
                    <a href="javascript:void(0)">
                        <span class="icon"><b class="fl icon-arrow-down"></b></span>
                        <span class="text-normal">新闻服务</span>
                    </a>
                </div>
                <ul class="sidebar-trans">
                    <li>
                        <a href="webSet.html">
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


            <div class="sidebar-nav">
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
            </div>
        </div>
    </div>
    <div class="view-product background-color">

    <#--主要展示区-->
    <#if mgr?exists && mgr.groupsId?exists >
        <#if mgr.groupsId.groupName?exists && mgr.groupsId.groupName == "用户维护">
            <#include "user_index.ftl"/>
            <script>
                $(".news-menu").hide();
            </script>
        <#elseif mgr.groupsId.groupName?exists && mgr.groupsId.groupName == "新闻与搜索维护">
            <#include "news_index.ftl"/>
            <script>
                $(".user-menu").hide();
            </script>
        <#else>
            <#include "root_index.ftl"/>
        </#if>
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
                    location = "${path!''}/login.html";
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
    </#if>


    </div>
</div>

<script>
    $(".sidebar-title").live('click', function () {
        if ($(this).parent(".sidebar-nav").hasClass("sidebar-nav-fold")) {
            $(this).next().slideDown(200);
            $(this).parent(".sidebar-nav").removeClass("sidebar-nav-fold");
        } else {
            $(this).next().slideUp(200);
            $(this).parent(".sidebar-nav").addClass("sidebar-nav-fold");
        }
    });
</script>
<#include "frame_end.ftl"/>