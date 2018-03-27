<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="static/css1/bootstrap.min.css">
    <style>
        .myForm {
            padding-top: 20px;
            width: 700px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div class="container">
   <#-- <div id="top2" class="clearfix">
        <div id="head" style="float: left">
            <img style="width: 100px; height: 150px"
                 src="${user.headImg}"/>
        </div>-->
    <form action="editUserInfo?phoneNum=${user.phoneNum}" method="post">

        <div class="form-horizontal myForm">
            <div class="form-group">
                <label class="control-label col-sm-2">账户名:</label>
                <div class="col-sm-6">
                    <input type="text" name="nurseName" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">昵称:</label>
                <div class="col-sm-6">
                    <input type="password" name="password" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">性别:</label>
                <div class="col-sm-6">
                    <input type="password" name="password1" class="form-control"> <span id="span3"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">地址:</label>
                <div class="col-sm-6">
                    <input type="password" name="password1" class="form-control"> <span id="span3"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">爱好:</label>
                <div class="col-sm-6">
                    <input type="password" name="password1" class="form-control"> <span id="span3"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">个人介绍:</label>
                <div class="col-sm-6">
                    <input type="password" name="password1" class="form-control"> <span id="span3"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">上次登录时间:</label>
                <div class="col-sm-6">
                    <input type="password" name="password1" class="form-control"> <span id="span3"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">账号创建时间:</label>
                <div class="col-sm-6">
                    <input type="password" name="password1" class="form-control"> <span id="span3"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">账号状态:</label>
                <div class="col-sm-6">
                    <input type="password" name="password1" class="form-control"> <span id="span3"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">账号类型:</label>
                <div class="col-sm-6">
                    <input type="password" name="password1" class="form-control"> <span id="span3"></span>
                </div>

            </div>
                    <input  type="submit" value="提交" style="margin-left: 300px ;float: left">
                   <button style="float: left"><a class="from-control" href="list.ftl">返回</button>




    </form>
</div>
</body>
</html>