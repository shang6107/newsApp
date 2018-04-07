<#include "frame.ftl"/>
<h3></h3>
<div class="account-info clearfix" style="margin: 10px">
    <div class="text-box-main min-width-300 fl">
        <dl>
            <dt class="padding-big-left lists-border-list clearfix">
                <div class="title fl padding-big-top padding-big-bottom">
                    <p><a href="">${(foo.username)!''}</a></p>
                    <p class="margin-small-top clearfix">
                        <span class="fl">账户安全级别:</span>
                        <a class="button bg-green-deep icon icon-button-green fl margin-left" href="javascript:">高</a>
                        <span class="fl" style="float: right;">
                            点击修改个人资料
                            <a href="">
                                <i class='layui-icon'>&#xe642;</i>
                            </a>
                        </span>

                    </p>
                </div>
            </dt>
            <dd class="padding-big clearfix">
                <p class="w50 fl">
                    <i class="fl icon icon-mobile"></i>

                    <span class="fl margin-left">手机：已绑定</span>
                </p>
                <p class="w50 fl">
                    <i class="fl icon icon-email"></i>

                    <span class="fl margin-left">邮箱：已绑定</span>
                </p>
                <p class="w50 fl">
                    <i class="fl icon icon-wechat"></i>
                    <span class="fl margin-left">微信：<a class="text-underline" href="#">未绑定</a></span>
                </p>
            <#--<p class="w50 fl">
                <i class="fl icon icon-password"></i>
                <span class="fl margin-left">支付密码：<a class='text-underline' href="#"> 未设置</a></span>
            </p>-->
            </dd>
        </dl>
    </div>


    <div class="text-box-main min-width-360 fl">
        <dl>
            <dt class="padding-big lists-border-list clearfix">
                <div class="fl w50 title">
                    <p>身份信息 : ${(foo.domain.groups.groupName)!''}</p>
                    <p class="margin-small-top clearfix" align="center">
                    <#--<span class="fl"><em class="h3 text-red-deep">0.00 </em>元</span>-->
                        <img src="static/img/identify_personal.png" width="30" height="30">
                    </p>
                </div>
                <div class="fl w50 padding-left title">
                    <p>权限描述 : </p>
                    <p class="margin-small-top clearfix">
                        <a class="fl margin-left button btn-red text-white" target="view_window" href="#">点击查看详情</a>
                    </p>
                </div>
            </dt>
            <dd class="padding-big">
                <p class="text-sliver text-default margin-small-top">

                <@security.authorize access="hasRole('新闻管理员') or hasRole('用户管理员')">
                    <span class="fl margin-left color-span">权限分发：
                                <a class="text-underline" href="javascript:void(0)">未拥有</a>
                        </span>
                    <span class="fl margin-left color-span">添加管理员：
                            <a class="text-underline" href="javascript:void(0)">未拥有</a>
                        </span>
                    <span class="fl margin-left color-span">撤销管理员：
                            <a class="text-underline" href="javascript:void(0)">未拥有</a>
                        </span>
                </@security.authorize>
                <@security.authorize access="hasRole('超级管理员')">
                    <span class="fl margin-left color-span">权限分发：
                                <a class="text-underline" href="management/root_management.html">进入</a>
                        </span>
                    <span class="fl margin-left color-span">添加管理员：
                            <a class="text-underline" href="management/root_account.html">进入</a>
                        </span>
                    <span class="fl margin-left color-span">撤销管理员：
                            <a class="text-underline" href="management/root_management.html">进入</a>
                        </span>
                </@security.authorize>
                </p>

            </dd>
        </dl>
    </div>
    <div class="text-box-main min-width-300 fl margin-right-none">
        <dl>
            <dt class="padding-big lists-border-list clearfix">
                <div class="fl title">
                    <p>交流群：</p>
                    <p class="text-sliver text-default margin-small-top">
                        <em class="h3 text-golden margin-big-right">群号：</em>658309868
                    </p>
                </div>
                <div class="fr">
                    <a class="button btn-orange text-white" href="http://jq.qq.com/?_wv=1027&k=28Xajoq" target="_blank">点击加入</a>
                </div>
            </dt>
            <dd class="padding-big">
                <div class="account-class text-hidden">
                    <p>您好，在使用中有任何问题，欢迎随时联系交流！</p>
                </div>
            </dd>
        </dl>
    </div>
</div>
<!--产品-->
<div class="account-product margin-big-top clearfix">
    <div class="text-box-main padding-big fl mine-product">
        <h2 class="h6 margin-big-bottom">个人工作</h2>
        <div class="mine-product-content clearfix">
            <ul class="w50 fl lists" id="work-ul">

                <script>
                    ($(function () {
                        $.get("ajax/back-log/${(foo.domain.mgrNo)!''}",
                                function (result) {
                                    if (result) {
                                        console.log(result);
                                        var html = "";
                                        for (var k in result) {
                                            var beginDate = new Date(result[k].begin_date_time);
                                            var endDate = new Date(result[k].end_date_time);
                                             html+=
                                                    '<li class="w70 lists-border-list">'
                                                    +'<p class="border-list-text">'
                                                    + result[k].title + ' <em class="orange">'
                                                    + beginDate.getFullYear() + '-' + (beginDate.getMonth() + 1)
                                                    + '-' + beginDate.getDate() + ' -  '
                                                    + endDate.getFullYear() + '-' + (endDate.getMonth() + 1)
                                                    + '-' + endDate.getDate() +
                                                    '</em><a class="text-main fr" href="#">查看</a></p></li>';
                                        }
                                    $("#work-ul").html(html);
                                    }
                                }
                        );
                    }))
                </script>

                <#--<li class="w70 lists-border-list">
                    <p class="border-list-text"><em class="orange">0</em> 台
                        <a class="text-main fr" href="#">查看</a>
                    </p>
                </li>
                <li class="w70 lists-border-list">
                    <p class="border-list-text">云市场模块： <em class="orange">0</em> 台
                        <a class="text-main fr" href="#">查看</a>
                    </p>
                </li>
                <li class="w70 lists-border-list">
                    <p class="border-list-text">云市场模板： <em class="orange">0</em> 台
                        <a class="text-main fr" href="#">查看</a>
                    </p>
                </li>-->

            </ul>

        </div>
    </div>
    <div class="text-box-main padding-big fl w25">
        <h2 class="h6 margin-big-bottom">最新动态</h2>
        <ul class="lists ul-list">
        </ul>
    </div>
</div>
</div>
</div>
</div>

<#include "frame_end.ftl"/>