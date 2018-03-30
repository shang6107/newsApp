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
                        <span class="fl">
                            点击修改个人资料
                            <a href="">
                                <i class="Hui-iconfont">&#xe6df;</i>
                            </a>
                        </span>

                    </p>
                </div>
                <span class="fr icon-head">
										<img src="http://user.haidao.la/avatar.php?uid=1504&type=virtual&size=middle"
                                             alt="账户头像">
									</span>
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
                <@security.authorize access="isAuthenticated()">
                    <span class="fl margin-left color-span">权限分发：
                                <a class="text-underline" href="#">进入</a>
                        </span>
                </@security.authorize>
                <@security.authorize access="hasRole('用户管理员') or hasRole('新闻管理员')">
                    <span class="fl margin-left color-span">添加管理员：
                            <a class="text-underline" href="#">未拥有</a>
                        </span>
                    <span class="fl margin-left color-span">撤销管理员：
                            <a class="text-underline" href="#">未拥有</a>
                        </span>
                </@security.authorize>
                <@security.authorize access="hasRole('超级管理员')">
                    <span class="fl margin-left color-span">添加管理员：
                            <a class="text-underline" href="#">进入</a>
                        </span>
                    <span class="fl margin-left color-span">撤销管理员：
                            <a class="text-underline" href="#">进入</a>
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
            <ul class="w50 fl lists">
                <!-- <li class="w70 lists-border-list">
                    <p class="border-list-text">云托管服务： <em class="orange">0</em>  台
                        <a class="text-main fr" href="#">查看</a>
                    </p>
                </li>  -->
                <li class="w70 lists-border-list">
                    <p class="border-list-text">云市场应用： <em class="orange">0</em> 台
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
                </li>

            </ul>
            <ul class="w50 fl lists">
                <!-- <li class="w80 lists-border-list">
                    <p class="border-list-text">15天内到期的云托管服务： <em class="orange">0</em>  台
                        <a class="text-main fr" href="#">查看</a>
                    </p>
                </li>  -->
                <li class="w80 lists-border-list">
                    <p class="border-list-text">15天内到期的云市场应用： <em class="orange">0</em> 台
                        <a class="text-main fr" href="#">查看</a>
                    </p>
                </li>
                <li class="w80 lists-border-list">
                    <p class="border-list-text">15天内到期的云市场模块： <em class="orange">0</em> 台
                        <a class="text-main fr" href="#">查看</a>
                    </p>
                </li>
                <li class="w80 lists-border-list">
                    <p class="border-list-text">15天内到期的云市场模板： <em class="orange">0</em> 台
                        <a class="text-main fr" href="#">查看</a>
                    </p>
                </li>
            </ul>
        </div>
    </div>
    <div class="text-box-main padding-big fl w25">
        <h2 class="h6 margin-big-bottom">最新动态</h2>
        <ul class="lists ul-list">
            <li class="lists-list"><a href="#">05-10 云托管服务临时维护公告管服务临时维护公告管服务临时维护公告管服务临时维护公告管服务临时维护公告管服务临时维护公告</a></li>
            <li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
            <li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
            <li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
            <li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
            <li class="lists-list"><a href="#">05-10 云托管服务临时维护公告</a></li>
        </ul>
    </div>
</div>
</div>
</div>
</div>

<#include "frame_end.ftl"/>