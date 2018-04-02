<#include "frame.ftl">

    <link rel="stylesheet" type="text/css" href="static/css1/htmleaf-demo.css">
    <link rel="stylesheet" href="static/css1/samples-styles.css">
    <link rel="stylesheet" href="static/css1/bootstrap.min.css">

    <style type="text/css">
        td.alt {
            background-color: #ffc;
            background-color: rgba(230, 127, 34, 0.2);
        }
    </style>

<div class="htmleaf-container">
    <div class="htmleaf-content">
        <div class="input-group">
            <div class="input-group-addon">过滤条件</div>
            <input class="form-control" type="search" id="input-filter" size="15" placeholder="输入过滤条件"></input>
        </div>
        <br>
        <table class="">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">标题</th>
                <th scope="col">类型</th>
                <th scope="col">访问量</th>
                <th scope="col">创建时间</th>
                <th scope="col">操作</th>

            </tr>
            </thead>
            <tbody>

            <#if news??>
                <#list news as new>
                <tr>
                    <td>${new.id!"无"}</td>
                    <td>${new.title!"无"}</td>
                    <td>${(new.type.typeName)!"无"}</td>
                    <td>${new.accessCount!"无"}</td>
                    <#if new.createTime?exists>
                        <td>${new.createTime?string("yyyy-MM-dd")}</td>
                    </#if>
                    <td class="sel"><a href="management/deleteNewsById">删除</a></td>
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

<#include "frame_end.ftl">