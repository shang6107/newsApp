<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <link rel="stylesheet" type="text/css" href="/static/css1/htmleaf-demo.css">
    <link rel="stylesheet" href="/static/css1/samples-styles.css">
    <link rel="stylesheet" href="/static/css1/bootstrap.min.css">

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
        <table class="">
            <thead>
            <tr>

                <th scope="col">headImg</th>
                <th scope="col">phoneNum</th>
                <th scope="col">nickName</th>
                <th scope="col">status</th>
                <th scope="col">lastTime</th>
                <th scope="col">createTime</th>


            </tr>
            </thead>
            <tbody>

            <#if users??>
                <#list users as user>
                <tr>
                    <td>${user.headImg!"无"}</td>
                    <td>${user.phoneNum!"无"}</td>
                    <td>${user.nickName!"无"}</td>
                    <td>${user.userStatus!"无"}</td>
                    <#if user.lastTime?exists>
                        <td>${user.lastTime?string("yyyy-MM-dd")}</td>
                    </#if>
                    <#if user.createTime?exists>
                        <td>${user.createTime?string("yyyy-MM-dd")}</td>
                    </#if>
                </tr>

                </#list>
            </#if>
            </tbody>
        </table>
        <#if users??>
<script>
    console.log("${users}");
</script>
        </#if>
    </div>

</div>

<script src="/static/js/jquery-1.11.0.min.js"></script>
<script src="/static/js/jquery.filtertable.min.js"></script>
<script>
    $(document).ready(function () {
        $('table').filterTable({ // apply filterTable to all tables on this page
            inputSelector: '#input-filter' // use the existing input instead of creating a new one
        });
    });
</script>
</body>
</html>
