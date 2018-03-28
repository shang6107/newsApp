<#include "frame.ftl">
<#if (RequestParameters.error)?exists>
    <script>
        alert("没有相应的记录");
    </script>
</#if>
    <link rel="stylesheet" href="static/css1/samples-styles.css">
    <link rel="stylesheet" href="static/css1/bootstrap.min.css">
<#--<table>
<#if users?exists>
    <#list (users.list) as user>
    <tr>
        <td >${user.phoneNum!"无"}</td>
        <td>${user.nickName!"无"}</td>

        <td>${(user.status.reason)!"无"}</td>

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
</table>-->

<div style="margin-top: 100px">
<div class="htmleaf-container">



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

            <#if users?exists>
            ${users!""}

            </#if>
            </tbody>
        </table>

    </div>





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
                    var url = "management/user-management-update";
                    $.post(url,phoneNum,function(data){
                        alert(data);

                    });

            });
    });
</script>

<#include "frame_end.ftl">