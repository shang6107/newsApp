<!DOCTYPE html>
<html lang="zh">
<#if (RequestParameters.error)?exists>
    <script>
        alert("没有相应的记录");
    </script>
</#if>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <link rel="stylesheet" type="text/css" href=static/css1/htmleaf-demo.css">
    <link rel="stylesheet" href="static/css1/samples-styles.css">
    <link rel="stylesheet" href="static/css1/bootstrap.min.css">

    <style type="text/css">
        td.alt {
            background-color: #ffc;
            background-color: rgba(230, 127, 34, 0.2);
        }
    </style>
</head>
<body>
<div class="htmleaf-container">
    <header class="htmleaf-header">


    </header>
    <div class="htmleaf-content">
        <div class="input-group">
            <div class="input-group-addon">过滤条件</div>
            <input class="form-control" type="search" id="input-filter" size="15" placeholder="输入过滤条件"></input>
        </div>
        <br>
        <table class="tables">
            <thead>
            <tr>
                <th scope="col">账户</th>
                <th scope="col">昵称</th>
                <th scope="col">状态</th>
                <th scope="col">类型</th>
                <th scope="col">上次登录时间</th>
                <th scope="col">创建时间</th>
                <th scope="col">操作</th>


            </tr>
            </thead>
            <tbody>

            <#if users??>
                <#list users as user>
                <tr>
                    <td >${user.phoneNum!"无"}</td>
                    <td>${user.nickName!"无"}</td>

                    <td>${user.status.reason!"无"}</td>

                    <td><#if user.typeName??>
                        ${user.typeName.type!"无"}
                    </#if></td>

                <td>
                    <#if user.lastTime?exists>
                        ${user.lastTime?string("yyyy-MM-dd")}
                    </#if>
                </td>
                <td>
                    <#if user.createTime?exists>
                      ${user.createTime?string("yyyy-MM-dd")}
                    </#if>
                </td>
                    <td class="sel"><a href="user-management-update?phoneNum=${user.phoneNum!""}"> 查看</td>
                </tr>

                </#list>
            </#if>
            </tbody>
        </table>

    </div>

</div>

<script src="static/js/jquery-1.11.0.min.js"></script>
<script src="static/js/jquery.filtertable.min.js"></script>
<script>
    $(document).ready(function () {
        $('table').filterTable({ // apply filterTable to all tables on this page
            inputSelector: '#input-filter' // use the existing input instead of creating a new one
        });
    });
</script>
<script type="text/javascript">

    $(function(){
        $(".sel").click(function(){
            var phoneNum=$(this).parent().children(":first").text();
                    var row=$(this).parent();
                    var url = "user-management-update";
                    $.post(url,phoneNum,function(data){
                        alert(data);

                    });

            });
    });
</script>

</body>
</html>
