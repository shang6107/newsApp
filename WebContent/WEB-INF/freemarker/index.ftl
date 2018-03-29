<#include "frame.ftl"/>
<#--<#if mgr?exists && mgr.groupsId?exists >
    <#if mgr.groupsId.groupName?exists && mgr.groupsId.groupName == "用户维护">
        <#include "user_index.ftl"/>
    <script>
        $(".news-menu").hide();
    </script>
    <#elseif mgr.groupsId.groupName?exists && mgr.groupsId.groupName == "新闻与搜索维护">
        <#include "news_index.ftl"/>
    <script>
        $(".user-menu").hide();
    </script>
    <#else>
        <#include "root_index.ftl"/>
    </#if>
</#if>-->
