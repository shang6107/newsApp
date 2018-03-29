
<#include "frame.ftl"/>
<link rel="stylesheet" href="static/css1/bootstrap.min.css">
<div class="container">
   <#-- <div id="top2" class="clearfix">
        <div id="head" style="float: left">
            <img style="width: 100px; height: 150px"
                 src="${user.headImg}"/>
        </div>-->
    <form action="getUserByPhoneNum?phoneNum=${user.phoneNum}" method="post">


        <div class="form-horizontal myForm">

            <div class="form-group">

                <label class="control-label col-sm-2">账户名:</label>
                <div class="col-sm-6">

                <@spring.formInput "user.phoneNum" "class=form-control"></@spring.formInput>

                </div>
            </div>



            <div class="form-group">
                <label class="control-label col-sm-2">昵称:</label>
                <div class="col-sm-6">

                <@spring.formInput "user.nickName" "class=form-control"></@spring.formInput><span id="span3"></span>
                </div>
            </div>



            <div class="form-group">
                <label class="control-label col-sm-2">性别:</label>
                <div class="col-sm-6">
                <@spring.formInput "user.gender" "class=form-control"></@spring.formInput> <span id="span3"></span>
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-sm-2">地址:</label>
                <div class="col-sm-6">
                <@spring.formInput "user.address" "class=form-control"></@spring.formInput> <span id="span3"></span>
                </div>
            </div>



                <div class="form-group">

                    <label class="control-label col-sm-2">爱好:</label>
                    <div class="col-sm-6">
                    <@spring.formInput "user.hobby" "class=form-control"></@spring.formInput> <span id="span3"></span>
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-sm-2">个人介绍:</label>
                    <div class="col-sm-6">
                    <@spring.formInput "user.introduce" "class=form-control"></@spring.formInput> <span id="span3"></span>
                    </div>
                </div>



            <div class="form-group">
                <label class="control-label col-sm-2">上次登录时间:</label>
                <div class="col-sm-6">
                <@spring.formInput "user.lastTime""class=form-control"></@spring.formInput> <span id="span3"></span>
                </div>
            </div>


                <div class="form-group">

                <label class="control-label col-sm-2">账号创建时间:</label>
                <div class="col-sm-6">
                <@spring.formInput "user.createTime" "class=form-control"></@spring.formInput> <span id="span3"></span>
                </div>
            </div>


                <div class="form-group">
                <label class="control-label col-sm-2">账号状态:</label>
                <div class="col-sm-6">
                <@spring.formInput "user.status" "class=form-control"></@spring.formInput> <span id="span3"></span>
                </div>
            </div>


                <div class="form-group">
                <label class="control-label col-sm-2">账号类型:</label>
                <div class="col-sm-6">
                <@spring.formInput "user.typeName" "class=form-control"></@spring.formInput> <span id="span3"></span>
                </div>

            </div>
                    <input  type="submit" value="提交" style="margin-left: 300px ;float: left">
                   <button style="float: left"><a class="from-control" href="management/user-list">返回</button>




    </form>
</div>
<#include "frame_end.ftl"/>