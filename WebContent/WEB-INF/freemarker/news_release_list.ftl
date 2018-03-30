<#include "frame.ftl">
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <link rel="stylesheet" type="text/css" href="static/css1/htmleaf-demo.css">
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
    <div class="htmleaf-content">

        <table class="">
            <thead>
            <tr>

                <th scope="col">ID</th>
                <th scope="col">新闻类型</th>
                <th scope="col">标题</th>
                <th scope="col">发布者</th>
                <th scope="col">发布时间</th>
                <th scope="col">浏览量</th>
                <th scope="col">保存路径</th>
                <th scope="col">状态</th>
                <th scope="col">操作</th>

            </tr>
            </thead>
            <tbody>

            <#if release??>
                <#list release as releas>
                <tr>
                    <td>${releas.id!"无"}</td>
                    <td>${releas.newTypeId.typeName!"无"}</td>
                    <td>${releas.title!"无"}</td>
                    <td>${releas.userId.nickName!"无"}</td>
                    <#if releas.createTime?exists>
                        <td>${releas.createTime?string("yyyy-MM-dd")}</td>
                    </#if>
                    <td>${releas.accessCount!"无"}</td>
                    <td>${releas.path!"无"}</td>
                    <td>${releas.status.reason!"无"}</td>
                    <td class="sel"><a href="/management/updateReleaseById?id=${releas.id!""}">修改</a></td>
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
</body>
</html>
<#include "frame_end.ftl">