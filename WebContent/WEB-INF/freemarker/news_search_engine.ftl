<#include "frame.ftl"/>

    <table id="demo" lay-filter="test"></table>


<script>


    layui.use('table', function () {
        var table = layui.table;

        //第一个实例
        table.render({
            elem: '#demo'
            , height: 750
            , curr: 1
            , hash: true
            , limit: 10
            , limits: 5
            , skin: "row"
            , loading: true
            , text: {
                none: '暂无相关数据' //默认：无数据。注：该属性为 layui 2.2.5 开始新增
            }
            , request: {
                pageName: 'pageNum' //页码的参数名称，默认：page
                , limitName: 'pageSize' //每页数据量的参数名，默认：limit
            }
            , url: 'ajax/user-list' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'id', title: 'ID', width: 300, sort: true}
                , {field: 'phoneNum', title: '手机号', width: 150}
                , {field: 'nickName', title: '昵称', width: 100, sort: true}
                , {
                    field: 'gender', title: '性别', width: 60, templet: function (d) {
                        return d.gender == "1" ? "男" : "女";
                    }
                }
                , {field: 'address', title: '地址', width: 100}
                , {field: 'hobby', title: '爱好', width: 80, sort: true}
                , {
                    field: 'birth', title: '生日', width: 200, sort: true, templet: function (d) {
                        var date = new Date(d.birth);
                        return date.getFullYear() + "年" + (date.getMonth() + 1) + "月" + date.getDate() + "日"
                    }
                }
                , {field: 'introduce', title: '介绍', width: 80}
                , {
                    field: 'status', title: '状态', width: 80, sort: true, templet: function (d) {
                        return d.status == "FREEZE" ? "冻结" : (d.status == "NORMAL" ? "正常" : "异常");
                    }
                }
                , {
                    field: 'edit', title: '编辑', width: 120, templet: function (d) {
                        return d.edit == null ?
                                "<a href='management/user-edit?id=" + d.id + "'>" +
                                "<img width='18' height='18' src='static/img/edit26.png'>" +
                                "</a>&nbsp;" +
                                " <a href=''>" +
                                "<img width='18' height='18' src='static/img/edit26.png'>" +
                                "</a>&nbsp;" +
                                " <a href=''>" +
                                "<img width='18' height='18' src='static/img/edit26.png'>" +
                                "</a>"
                                : "";
                    }
                }
            ]]
        });

    });


</script>
<#include "frame_end.ftl"/>