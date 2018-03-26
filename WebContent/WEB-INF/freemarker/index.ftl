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
<script>
    $(".sidebar-title").live('click', function () {
        if ($(this).parent(".sidebar-nav").hasClass("sidebar-nav-fold")) {
            $(this).next().slideDown(200);
            $(this).parent(".sidebar-nav").removeClass("sidebar-nav-fold");
        } else {
            $(this).next().slideUp(200);
            $(this).parent(".sidebar-nav").addClass("sidebar-nav-fold");
        }
    });
</script>
