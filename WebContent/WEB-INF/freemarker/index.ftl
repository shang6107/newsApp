<#include "frame.ftl"/>

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