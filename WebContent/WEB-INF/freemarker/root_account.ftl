<#include "frame.ftl"/>

<br/>
<h2 align="center">管理员资料</h2>
<div id="head-img" style="position: absolute;right: 15%;top: 10%; ">
    <img id="head-img-tag" src="static/img/noavatar_middle.gif" style="width: 125px;height: 165px;"/><br>
    <p align="center">点击上传头像</p>
</div>
<script>
    ($(function () {
        var x = new FileReader();
        $("#head-img").click(function () {
            $("#file").click();
        });
        document.getElementById("file").onchange = function () {
            x.readAsDataURL(this.files[0]);
        };
        x.onloadend = function () {
            console.log($("#head-img-tag").attr("src"));
            $("#head-img-tag").attr("src", this.result);
        }
        $.get(
                "ajax/groups-list",
                function (result) {
                    var list = result.data;
                    var html = "";
                    for (var k in list) {
                        html += "<option value='" + list[k].id + "'>" + list[k].groupName + "</option>";
                    }
                    $("select[name='groups.id']").html("<option value=''>请选择</option>" + html);
                    form.render();
                }
        );
    }));
</script>
<div class="manager-update-form">
<#-- <form action="management/root/add-manager" method="post" enctype="multipart/form-data">
     <input name="file" type="file"/><br/>
     <input name="mgrNo">
     <input name="groups.id">
     <input name="headImg" >
     <input type="submit">
 </form>-->
    <form class="layui-form" action="management/root/add-manager" method="post" enctype="multipart/form-data">

        <input id="file" type="file" name="file" style="display: none"/>

        <div class="layui-form-item">
            <label class="layui-form-label">管理员姓名</label>
            <div class="layui-input-block">
            <#if manager?exists>
                <@spring.bind "manager.mgrName"/>
            </#if>
                <input type="text" name="mgrName" value="${(manager.mgrName)!''}" class="layui-input"/>
                <div class="layui-form-mid layui-word-aux" style="color: red;" id="mgrName-prompt">
                <#if manager?exists>
                        <@spring.showErrors ","/>
                    </#if>
                </div>
                <div class="layui-form-mid layui-word-aux">请输入管理员姓名</div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">管理员密码</label>
            <div class="layui-input-block">
            <#if manager?exists>
                <@spring.bind "manager.password"/>
            </#if>
                <input type="password" name="password" autocomplete="off" lay-verify="pass" class="layui-input">
                <div class="layui-form-mid layui-word-aux" style="color: red;">
                <#if manager?exists>
                        <@spring.showErrors ","/>
                    </#if>
                </div>
                <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码确认</label>
            <div class="layui-input-block">
                <input type="password" name="password1" autocomplete="off" class="layui-input">
                <div class="layui-form-mid layui-word-aux">请再次填写6到12位密码</div>
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">权限组</label>
        <#if manager?exists>
            <#if manager.groups?exists>
                <@spring.bind "manager.groups.id"/>
            </#if>
        </#if>
            <div class="layui-input-block">
                <select name="groups.id">

                </select>
            </div>
            <div class="layui-form-mid layui-word-aux" style="color: red;margin-left: 110px">
            <#if manager?exists>
                    <#if manager.groups?exists>
                <@spring.showErrors ","/>
            </#if>
                </#if>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>

<script>
    var form = layui.form;
    form.render();
    /*$("#manager-update-form").submit(function () {
        if ($("input[name='password']").val() === "" || $("input[name='password1']").val() === "") {
            $("input[name='password']").attr("name", "");
            $("input[name='password1']").attr("name", "");
        }
        return true;
    });*/

    form.on('checkbox(allChoose)', function (data) {
        var child = $(data.elem.parentNode).find("input");
        child.each(function (index, item) {
            item.checked = data.elem.checked;
        });
        form.render('checkbox');
    })
</script>

<#include "frame_end.ftl"/>
