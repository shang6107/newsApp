<#import "spring.ftl" as spring/>
<#assign path = (Request.request.getContextPath())!"">
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="${path!''}/">
    <meta charset="UTF-8">
    <link href="static/css1/layout.css" rel="stylesheet" type="text/css">
    <link href="static/css1/login.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="static/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.js"></script>
    <script type="text/javascript" src="static/js/js.js"></script>
    <script type="text/javascript" src="static/js/Validform_v5.3.2_min.js"></script>
</head>
<body style="background: url('static/img/login-bg.png')">
<div class="main ">
    <!--登录-->
    <div class="login-dom login-max">
        <div class="logo text-center">
            <a href="#">
                <img src="static/img/logo.png" width="180px" height="180px">
            </a>
        </div>
        <div class="login container " id="login">
            <form class="login-form" action="login" method="post" autocomplete="off">
                <div class="login-box border text-small" id="box">
                    <div class="name border-bottom">
                        <input type="text" placeholder="账号" id="mgrNo" name="mgrNo" datatype="*"
                                nullmsg="请填写帐号信息">
                    </div>
                    <div class="pwd">
                        <input type="password" placeholder="密码" datatype="*" id="password" name="password"
                               nullmsg="请填写帐号密码">
                    </div>
                </div>
                <input type="hidden" name="formhash" value="5abb5d21"/>
                <input type="submit" class="btn text-center login-btn" value="立即登录">
            </form>

        </div>
    </div>


    <div class="popupDom">
        <div class="popup text-default">
        </div>
    </div>
    <script>
        function popup_msg(msg) {
            $(".popup").html("" + msg + "");
            $(".popupDom").animate({
                "top": "0px"
            }, 400);
            setTimeout(function () {
                $(".popupDom").animate({
                    "top": "-40px"
                }, 400);
            }, 2000);
        }
        <#if RequestParameters.error?exists>
            popup_msg("用户名或密码不正确");
        </#if>
    </script>
</div>

</body>
</html>