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
    <script type="text/javascript" src="static/js/myJavaScript.js"></script>
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
        <#if RequestParameters.unAuthenticated?exists>
            popup_msg("\u8bf7\u767b\u5f55");
        </#if>
        <#if RequestParameters.error?exists>
            popup_msg("\u7528\u6237\u540d\u6216\u5bc6\u7801\u4e0d\u6b63\u786e");
        </#if>
        <#if RequestParameters.logout?exists>
            popup_msg("\u60a8\u5df2\u5b89\u5168\u9000\u51fa\u7cfb\u7edf");
        </#if>
    </script>
</div>

</body>
</html>