<#include "frame.ftl"/>

<script>
    $.post("management/user-management-update"{"nickName":"a第三方第三方sfdsafds"},function () {

    })
</script>
<form action="management/user-management-update" method="post">
    账户名:<input name="phoneNum" type="text" value="${(user.phoneNum)!''}"><br>
    昵称:<input name="nickName" type="text" value="${(user.nickName)!''}"><br>

    性别:<input name="gender" id="gender" ><br>

    地址:<input name="address" type="text" value="${(user.address)!''}"><br>

    爱好:<input name="hobby" type="text" value="${(user.hobby)!''}"> <br>

    个人介绍:<input name="introduce" type="text" value="${(user.introduce)!''}"><br>


    账号状态:<select name="statusReason" >
    <option id="status" >${(user.status.reason)!""}</option>
    <option value="1" >  冻结</option>
    <option value="2" > 异常</option>
    <option value="3"> 正常</option>
    <option value="4" > 失效</option>
</select><br>

    账号类型:<input type="text" name="userTypes" value="${(user.typeName.type)!""}"><br>

    <input  type="submit" value="提交" style="margin-left: 300px ;float: left">

    <button style="float: left"><a class="from-control" href="management/user-list">返回</button>
</form>

<#--<script type="text/javascript">
    if("${user.gender}"=="0"){
        $("#gender").attr({value:"1"});
    }else {
        $("#gender").attr({value:"0"});
    }

</script>-->

<#include "frame_end.ftl"/>