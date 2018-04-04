<#include "frame.ftl"/>

<script>
    <#if RequestParameters.mgrNo?exists>
    var mgrNo = "${RequestParameters.mgrNo!''}";
    </#if>
    function dataFill2Select(url, selector, showField, valueField) {
        $.get(url, function (result) {
            var list = result.data;
            if (list) {
                var html = "";
                for (var i = 0; i < list.length; i++) {
                    if (mgrNo === list[i][valueField])
                        html += "<option selected value='" + list[i][valueField] + "'>" + list[i][showField] + "</option>";
                    else
                        html += "<option value='" + list[i][valueField] + "'>" + list[i][showField] + "</option>";
                }
            }
            $(selector).html($(selector).html() + html);
            form.render();
        });
    }

    function dataFill2CheckBok(url, selector, showField) {
        $.get(url, function (result) {
            var list = result.data;
            if (list) {
                var html = "";
                for (var i = 0; i < list.length; i++) {
                    for (var k in list[i][showField]) {
                        html += "<input type='checkbox' name='work' lay-filter='work'" +
                                "title='" + list[i][showField][k] + "' value='" + list[i][showField][k] + "'/>";
                    }
                }
            }
            $(selector).html(html + " <input type=\"checkbox\" lay-skin=\"primary\" lay-filter=\"allChoose\"/>");
            form.render();
        });
    }

    ($(function () {
        dataFill2Select("ajax/manager-list", "select[name='mgrNo']", "mgrName", "mgrNo");
        dataFill2CheckBok("ajax/workType-list", "#work-input", "workDetails");
        $("input[type='checkbox']").click(function () {
//            $("input[name='title']").val($(this).val()+ ";");
        })
    }));
</script>

<div class="manager-update-form">
    <form class="layui-form manager-update-form" action="management/backlog">
        <div class="layui-form-item">
            <label class="layui-form-label">标题</label>
            <div class="layui-input-block">
                <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题"
                       class="layui-input">
                <div class="layui-form-mid layui-word-aux" id="title-prompt"></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">指派</label>
            <div class="layui-input-block">
                <select name="mgrNo" <#--lay-filter="aihao"-->>
                    <option selected>请选择</option>
                </select>
                <div class="layui-form-mid layui-word-aux" id="mgrNo-prompt"></div>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">时间范围</label>
                <div class="layui-input-inline" style="width: 500px;margin-left: 30px">
                    <input type="text" placeholder="开始时间" name="date" id="test6" autocomplete="off" class="layui-input">
                    <div class="layui-form-mid layui-word-aux" id="date-prompt"></div>
                </div>
            </div>
        </div>

    <#--<div class="layui-form-item">
        <label class="layui-form-label">单行选择框</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">

            </select>
        </div>
    </div>-->


        <div class="layui-form-item">
            <label class="layui-form-label">工作</label>
            <div class="layui-input-block" id="work-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">工作内容</label>
            <div class="layui-input-block">
                <textarea placeholder="请务必尽快完成" name="content" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-filter="demo1" lay-submit="">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>

<script>

    var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;
    form.render();
    //日期
    laydate.render({
        elem: '#test6',
        range: true,
        theme: '#393D49'
    });
    laydate.render({
        elem: '#date1'
    });

    //创建一个编辑器
    var editIndex = layedit.build('LAY_demo_editor');

    /* //自定义验证规则
     form.verify({
         title: function (value) {
             if (value.length < 5) {
                 return '标题至少得5个字符啊';
             }
         }
         , pass: [/(.+){6,12}$/, '密码必须6到12位']
         , content: function (value) {
             layedit.sync(editIndex);
         }
     });

     //监听指定开关
     form.on('switch(switchTest)', function (data) {
         layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
             offset: '6px'
         });
         layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
     });
 */
    //监听提交
    form.on('submit(demo1)', function (data) {
        if (data.field.title === "") {
            $("#title-prompt").text("标题不能为空");
            return false;
        }
        if (data.field.title.length <= 3) {
            $("#title-prompt").text("标题不能小于4个字符");
            return false;
        }
        if (data.field.date === "") {
            $("#date-prompt").text("日期不能为空");
            return false;
        }
        if (data.field.mgrNO === "请选择") {
            $("#mgrNo-prompt").text("请选择指派人员");
        }
        if (data.field.content === "") {
            data.field.content = "请务必尽快完成!!!";
        } else {
            if (String(data.field.content).length <= 10) {
                alert("内容不能小于10个字符");
                return false;
            }
        }
        var v = confirm(
                "给" + data.field.mgrNo + "指派任务：" + data.field.work + "。时间范围：" + data.field.date
                , {
                    title: '最终的提交信息'
                }
        );
        if (v) {
            return true;
        }
        return false;
    });
    /*form.on('submit(demo1)', function(data){
        layer.alert(JSON.stringify(data.field), {
            title: '最终的提交信息'
        })
        return false;
    });*/
    form.on('checkbox(allChoose)', function (data) {
        var child = $(data.elem.parentNode).find("input");
        child.each(function (index, item) {
            item.checked = data.elem.checked;
        });
        form.render('checkbox');
    })
    form.on('checkbox(work)', function (data) {
        if(String($("input[name='title']").val()).lastIndexOf(this.value) === -1){
            $("input[name='title']").val($("input[name='title']").val() + this.value + ";");
        }

        form.render('checkbox');
    })
</script>
<#include "frame_end.ftl"/>