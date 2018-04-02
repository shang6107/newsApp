<#include "frame.ftl">
<script>
    var pageNum = 1;
    var pageSize = 5;
    $.post("ajax/manager-list", {"pageNum": pageNum, "pageSize": pageSize}, function (d) {
        var list = d.data;
        console.log(list);
        var tableContentHtml = "<table style='margin:20px auto' align='center' cellspacing='0' cellpadding='0' border='1'>";
        tableContentHtml +=
                "<tr>" +
                "<td>\u7ba1\u7406\u5458\u7f16\u53f7</td>" +
                "<td>\u7ba1\u7406\u5458\u59d3\u540d</td>" +
                "<td>\u7ba1\u7406\u5458\u6743\u9650\u7ec4</td>" +
                "<td>\u7ba1\u7406\u5458\u6743\u9650\u7ec4\u63cf\u8ff0</td>" +
                "<td>\u6743\u9650\u7ec4\u8be6\u7ec6\u4fe1\u606f</td>" +
                "<td>\u7528\u6237\u72b6\u6001</td>" +
                "<td style='width: 100px'>\u64cd\u4f5c</td>" +
                "</tr>";
        for (var k = 0; k < list.length; k++) {
            tableContentHtml += "<tr>";
            tableContentHtml += "<td class='commons-td'>" + list[k].mgrNo + "</td>";
            tableContentHtml += "<td class='commons-td'>" + list[k].mgrName + "</td>";
            if(list[k].groups){
                tableContentHtml += "<td class='commons-td'>" + list[k].groups.groupName + "</td>";
                tableContentHtml += "<td class='commons-td'>" + list[k].groups.descpt + "</td>";
                if(list[k].groups.authorities){
                    tableContentHtml += "<td class='commons-td'><select  style='width:170px;'>";
                    tableContentHtml += "<option>\u8be5\u4e0b\u62c9\u5217\u8868\u4ec5\u4f9b\u67e5\u770b</option>";
                    for (var i = 0; i < list[k].groups.authorities.length; i++) {
                        tableContentHtml += "<option>" + list[k].groups.authorities[i].descpt + "</option>";
                    }
                    tableContentHtml += "</select></td>";
                }
            }else{
                tableContentHtml += "<td class='commons-td'>无</td>";
                tableContentHtml += "<td class='commons-td'>无</td>";
                tableContentHtml += "<td class='commons-td'>无</td>";
            }

            tableContentHtml += "<td class='commons-td'>" +
                    (list[k].status === "NORMAL" ? "\u6b63\u5e38" : (list[k].status === "FREEZE"
                            ? "\u51bb\u7ed3" : (list[k].status === "ABNORMAL"
                                    ? "\u5f02\u5e38" : "\u5931\u6548")))
                    + "</td>";
            tableContentHtml += "<td style='padding:0;background:#F2F2F2'>" +
                    "<a class='edit-manager' href='management/root/manager-edit/" + list[k].mgrNo + "'>" +
                    "<i class='layui-icon'>&#xe642;</i>" +
                    "</a>&nbsp;" +
                    "<a class='freeze-manager' href='management/root/manager-freeze?mgrNo=" + list[k].mgrNo + "'>" +
                    "<i class='layui-icon'>" + (list[k].status === "NORMAL" ? "&#xe640;" : "&#xe64d;") + "</i>" +
                    "</a>&nbsp;" +
                    "<a class='logback-manager' href='management/root/manager-sendMsg/=" + list[k].mgrNo + "'>" +
                    "<i class='layui-icon'>&#xe622;</i>" +
                    "</a></td>";
            tableContentHtml += "</tr>";
        }

        tableContentHtml += "</table>";
        $("div.show-manager").html(tableContentHtml);
    });
    ($(function () {
        var hasFreeze = false;
        $("div.show-manager").delegate("a", "click", function (data) {
            if (data.currentTarget.className === "freeze-manager") {
                var statusTextDescNode = data.currentTarget.parentNode.previousSibling;
                hasFreeze = statusTextDescNode.innerText !== "\u6b63\u5e38";
                if (!hasFreeze) {
                    if (confirm("\u662f\u5426\u786e\u5b9a\u51bb\u7ed3\u8be5\u7ba1\u7406\u5458\u8d26\u6237\uff1f")) {
                        $(data.currentTarget).html("<i class='layui-icon layui-anim layui-anim-rotate layui-anim-loop'>&#xe63d;</i>");
                        hasFreeze = true;
                        $.ajax({
                            url: data.currentTarget.href + "&status=FREEZE",
                            success: function (result) {
                                if (result.result) {
                                    statusTextDescNode.innerText = "\u51bb\u7ed3";
                                    $(data.currentTarget).html("<i class='layui-icon'>&#xe64d;</i>");
                                    popup_msg("\u4fee\u6539\u72b6\u6001\u6210\u529f!");
                                }
                            },
                            error: function (xmlHttpRequest, missMsg, exception) {
                                if (xmlHttpRequest.status === 403) {
                                    $(data.currentTarget).html("<i class='layui-icon'>&#xe640;</i>");
                                    popup_msg("\u5bf9\u4e0d\u8d77\uff0c\u4fee\u6539\u72b6\u6001\u5931\u8d25 : \u6743\u9650\u4e0d\u8db3\uff01");
                                }
                            }
                        });
                    }
                } else {
                    if (confirm("\u662f\u5426\u8981\u89e3\u51bb\u8be5\u7ba1\u7406\u5458\u8d26\u6237\uff1f")) {
                        $(data.currentTarget).html("<i class='layui-icon layui-anim layui-anim-rotate layui-anim-loop'>&#xe63d;</i>");
                        hasFreeze = false;
                        $.ajax({
                            url: data.currentTarget.href + "&status=NORMAL",
                            success: function (result) {
                                if (result.result) {
                                    $(data.currentTarget).html("<i class='layui-icon'>&#xe640;</i>");
                                    statusTextDescNode.innerText = "\u6b63\u5e38";
                                    popup_msg("\u4fee\u6539\u72b6\u6001\u6210\u529f!");
                                }
                            },
                            error: function (xmlHttpRequest, missMsg, exception) {
                                if (xmlHttpRequest.status === 403) {
                                    $(data.currentTarget).html("<i class='layui-icon'>&#xe64d;</i>");
                                    popup_msg("\u5bf9\u4e0d\u8d77\uff0c\u4fee\u6539\u72b6\u6001\u5931\u8d25 : \u6743\u9650\u4e0d\u8db3\uff01");
                                }
                            }
                        });
                    }
                }
                return false;
            }
        });
    }))
</script>
<div class="show-manager"></div>
<#include "frame_end.ftl">