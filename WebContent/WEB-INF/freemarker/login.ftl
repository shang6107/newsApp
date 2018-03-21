
<#import "spring.ftl" as spring/>
<#if Request.contextPath?exists>
    <#assign path = Request.contextPath/>
</#if>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="${path!''}/">
    <meta charset="UTF-8">
    <script type="text/javascript" src="static/js/jquery.js"></script>
    <link href="static/css/layout.css" rel="stylesheet" type="text/css">
    <link href="static/css/login.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="static/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="static/js/js.js"></script>
</head>
<body style="background: url('/static/img/login-bg.png')">
<div class="main ">
    <!--登录-->
    <div class="login-dom login-max">
        <div class="logo text-center">
            <a href="#">
                <img src="static/img/logo.png" width="180px" height="180px">
            </a>
        </div>
        <div class="login container " id="login">
            <form class="login-form" action="index.html" method="post" autocomplete="off">
                <div class="login-box border text-small" id="box">
                    <div class="name border-bottom">
                        <input type="text" placeholder="账号" id="username" name="username" datatype="*" nullmsg="请填写帐号信息">
                    </div>
                    <div class="pwd">
                        <input type="password" placeholder="密码" datatype="*" id="password" name="password" nullmsg="请填写帐号密码">
                    </div>
                </div>
                <input type="hidden" name="formhash" value="5abb5d21"/>
                <input type="submit" class="btn text-center login-btn" value="立即登录">
            </form>
            <div class="forget" style="background: url('static/img/forget.png')">
                <a href="repassword.html" class="forget-pwd text-small fl">忘记登录密码？</a><a href="register.html" class="forget-new text-small fr" id="forget-new">创建一个新账号</a>
            </div>
        </div>
    </div>

    <div class="popupDom">
        <div class="popup text-default">
        </div>
    </div>
</div>
<script type="text/javascript" src="static/js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
    function popup_msg(msg) {
        $(".popup").html("" + msg + "");
        $(".popupDom").animate({
            "top": "0px"
        }, 400);
        setTimeout(function() {
            $(".popupDom").animate({
                "top": "-40px"
            }, 400);
        }, 2000);
    }

    /*动画（注册）*/
    $(document).ready(function(e) {
         $("input[name=username]").focus();
         $('.login-form').Validform({
         	ajaxPost: true,
         	tiptype: function(msg) {
         		if (msg) popup_msg('' + msg + '');
         	},
         	callback: function(ret) {
         		popup_msg('' + ret.info + '');
         		if (ret.status == 1) {
         			if (ret.uc_user_synlogin) {
         				$("body").append(ret.uc_user_synlogin);
         			}
         			setTimeout("window.location='" + ret.url + "'", 2000);
         		}
         	}
         })

    });
</script>

</body>
</html>