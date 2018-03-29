<#include "frame.ftl">
<div class="go-login" style="margin: 50px auto;">
<#if foo?exists>
    <h1>没有权限</h1>
</#if>
<#if RequestParameters.noLogin?exists>
    <a id="go-login" href="login.html"><h3 style="color: #1E9FFF" align="center">
    您目前以游客身份访问，查看更多内容请先登录(<span id="countDown"></span> 点击手动返回登录页面)</h3></a>
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

<#include "frame_end.ftl">