<#include "frame.ftl">

<br/>
<h2 align="center">${manager.mgrNo!""}管理员资料</h2>
<div id="head-img" style="position: absolute;right: 15%;top: 10%; ">
    <img id="head-img-tag" src="${manager.headImg!'static/img/timg.jpg'}" style="width: 115px;height: 165px;"/><br>
    <p align="center">头像</p>
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
    }));
</script>
<div class="manager-update-form">
    <form id="manager-update-form" class="layui-form" action="management/root/manager-update" method="post" enctype="multipart/form-data">
        <input id="file" type="file" name="file" style="display: none"/>
        <input type="hidden" name="mgrNo" value="${manager.mgrNo!''}"/>
        <input type="hidden" name="id" value="${manager.id!''}"/>
        <input type="hidden" name="remoteAddress" value="${(manager.remoteAddress)!''}"/>
        <div class="layui-form-item">
            <label class="layui-form-label">管理员姓名</label>
            <div class="layui-input-block">
            <@spring.bind "manager.mgrName"/>
                <input type="text" name="mgrName" value="${manager.mgrName!''}" class="layui-input"/>
                <div class="layui-form-mid layui-word-aux" style="color: red;"><@spring.showErrors ","/></div>
                <div class="layui-form-mid layui-word-aux">请输入管理员姓名</div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">管理员密码</label>
            <div class="layui-input-block">
            <@spring.bind "manager.password"/>
                <input type="password" name="password" autocomplete="off" lay-verify="pass" class="layui-input">
                <div class="layui-form-mid layui-word-aux" style="color: red;"><@spring.showErrors ","/>&nbsp;&nbsp;&nbsp;&nbsp;</div>
                <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码确认</label>
            <div class="layui-input-block">
                <input type="password" name="password1" lay-verify="pass" autocomplete="off" class="layui-input">
                <div class="layui-form-mid layui-word-aux">请再次填写6到12位密码</div>
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-block">
                <select name="stat">
                <#list allStatus as status>
                    <option value="${status.reason!""}">${status.reason!""}</option>
                </#list>
                </select>
            </div>
        </div>
        <script>
            var reason = "${(manager.status.reason)!''}";
            var flag = 0;
            for (var i = 0; i < $("select[name='stat'] option").length; i++) {
                if ($("select[name='stat'] option")[i].value === reason) {
                    $("select[name='stat'] option")[i].selected = "selected";
                    flag = 1;
                    break;
                }
            }
            if(!flag){
                $("select[name='stat']").html("<option selected>无</option>");
            }
        </script>
        <div class="layui-form-item">
            <label class="layui-form-label">权限组</label>
            <div class="layui-input-block">
                <select name="groups.id">
                <#list allGroups as group>
                    <option value="${group.id!""}">${group.groupName!""}</option>
                </#list>
                </select>
            </div>
        </div>
        <script>
            var groupName = "${(manager.groups.groupName)!''}";
            var flag = 0;
            for (var i = 0; i < $("select[name='groups.groupName'] option").length; i++) {
                if ($("select[name='groups.groupName'] option")[i].value === groupName) {
                    $("select[name='groups.groupName'] option")[i].selected = "selected";
                    flag = 1;
                    break;
                }
            }
            if(!flag){
                $("select[name='groups.groupName']").html("<option selected>无</option>" + $("select[name='groups.groupName']").html());
            }
        </script>


        <div class="layui-form-item">
            <label class="layui-form-label">权限</label>
            <div class="layui-input-block">
            <#if allGroups?exists>
                <#list allGroups as group>
                    <#if group.authorities?exists>
                        <#list group.authorities as authority>
                            <input type="checkbox" name="authorities"
                                   title="${authority.descpt}"
                                   value="${authority.descpt}">
                        </#list>
                    </#if>
                </#list>
            </#if>
            <#--<input type="checkbox" name="like[read]" title="阅读">
            <input type="checkbox" name="like[game]" title="游戏">-->
                <input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">账号创建时间</label>
            <div class="layui-input-block">
            <@spring.bind "manager.createTime"/>
                <input type="text" readonly name="createTime"
                       value="${(manager.createTime?string('yyyy-MM-dd hh:mm:ss'))!''}" class="layui-input">
                <div class="layui-form-mid layui-word-aux" style="color: red;"><@spring.showErrors ","/></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">账号创建时间</label>
            <div class="layui-input-block">
            <@spring.bind "manager.lastTime"/>
                <input type="text" readonly name="lastTime"
                       value="${(manager.lastTime?string('yyyy-MM-dd hh:mm:ss'))!''}" class="layui-input">
                <div class="layui-form-mid layui-word-aux" style="color: red;"><@spring.showErrors ","/></div>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">登录次数</label>
            <div class="layui-input-block">
                <input readonly type="text" name="loginCount" value="${(manager.loginCount?number)!''}"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-filter="manager-update-form">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>

<script>
    var form = layui.form;
    form.render();
    $("#manager-update-form").submit(function () {
        if($("input[name='password']").val() === "" || $("input[name='password1']").val() === ""){
            $("input[name='password']").attr("name","");
            $("input[name='password1']").attr("name","");
        }
        return true;
    });
    form.on('checkbox(allChoose)', function (data) {
        var child = $(data.elem.parentNode).find("input");
        child.each(function (index, item) {
            item.checked = data.elem.checked;
        });
        form.render('checkbox');
    })
</script>
<#include "frame_end.ftl">