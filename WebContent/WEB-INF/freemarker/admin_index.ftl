<div>
    <h1>admin index</h1>

    <table cellpadding="10" cellspacing="0" border="1">
        <tr>
            <td>id</td>
            <td>mgrNo</td>
            <td>password</td>
            <td>mgrName</td>
            <td>lastTime</td>
            <td>createTime</td>
            <td>groupsId</td>
            <td>操作</td>
        </tr>
        <#if admins?exists>
          <#list admins as admin>
                <tr>
                    <td>${admin.id!""}</td>
                    <td>${admin.mgrNo!""}</td>
                    <td>${admin.password!""}</td>
                    <td>${admin.mgrName!""}</td>
                <td>
                    <#if admin.lastTime??>
                        ${admin.lastTime?string("yyyy-MM-dd")}
                    </#if>
                </td>
                <td>
                    <#if admin.createTime??>
                        ${admin.createTime?string("yyyy-MM-dd")}
                    </#if>
                </td>
                    <td>${admin.groupsId.groupName!""}</td>
                </tr>

            </#list>
        </#if>
    </table>



</div>