<#include "index.ftl"/>
<link rel="stylesheet" href="static/css1/style1.css">

<script type="text/javascript" src="static/js/easyform.js"></script>

<br>
<div class="form-div">
    <form id="reg-form" action="management/user-management-update" method="post">
        <table>
            <tr>
                <td>账户</td>
                <td><input name="phoneNum" type="text" value="${(user.phoneNum)!''}">
                </td>
            </tr>
            <tr>
                <td>昵称</td>
                <td><input name="nickName" type="text"  value="${(user.nickName)!''}"></td>
            </tr>
            <tr>
                <td>性别</td>
                <td><input name="gender" type="text" value="${(user.gender)!''}"  ></td>
            </tr>
            <tr>
                <td>地址</td>
                <td><input name="address" type="text"  value="${(user.address)!''}"></td>
            </tr>
            <tr>
                <td>爱好</td>
                <td><input name="hobby" type="text"  value="${(user.hobby)!''}" ></td>
            </tr>
            <tr>
                <td>个人介绍</td>
                <td><input name="introduce" type="text" value="${(user.introduce)!''}" ></td>
            </tr>
            账号状态:<select name="statusReason" >
            <option id="status" >${(user.status.reason)!""}</option>
            <option value="1" >  冻结</option>
            <option value="2" > 异常</option>
            <option value="3"> 正常</option>
            <option value="4" > 失效</option>
        </select><br>
            <tr>
                <td>账号类型</td>
                <td><input name="userTypes" type="text" value="${(user.typeName.type)!""}" ></td>
            </tr>
        </table>
		<div class="buttons">
			<input value="提交" type="submit" style="margin-right:20px; margin-top:20px;">

        </div>
        <br class="clear">
    </>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$('#reg-form').easyform();
});
</script>


<#include "frame_end.ftl"/>
