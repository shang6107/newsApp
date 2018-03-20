<#include "frame.ftl"/>

<form action="/logon" method="post">
    <input type="text" name="mgrNo" value=""/>${error!""}<br/>
    <input type="password" name="password"/><br/>
    <input type="submit"/>
</form>

<#include "frame_end.ftl"/>