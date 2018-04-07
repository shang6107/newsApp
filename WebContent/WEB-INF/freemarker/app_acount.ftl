<#include "frame.ftl"/>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>应用程序数据统计页面</legend>
</fieldset>
<div>


    <div class="layui-form">
        <table class="layui-table">
            <colgroup>
                <col width="100">
                <col width="100">
                <col width="100">
                <col width="100">
                <col width="100">
                <col width="100">
                <col width="100">
                <col width="100">
            </colgroup>
            <thead>
            <tr>
                <th>统计</th>
                <th>最低访问量</th>
                <th>最低访问地址</th>
                <th>最高访问地址</th>
                <th>最高访问量</th>

            </tr>
            </thead>
            <tbody>
            <#if data?exists>
                <#list data as period>
                <tr>
                    <#if (period.period)?exists >
                        <#if period.period == "week">
                            <td>本周</td>
                        <#elseif period.period == "month">
                            <td>本月</td>
                        <#elseif period.period == "total">
                            <td>总共</td>
                        <#elseif period.period == "yesterday">
                            <td>昨日</td>
                        <#elseif period.period == "today">
                            <td>今日</td>
                        </#if>
                    </#if>
                    <td>${period.sum_low!'0'}</td>
                    <td>${period.lowest_url!'无'}</td>
                    <td>${period.highest_url!'无'}</td>
                    <td>${period.sum_high!'无'}</td>
                </tr>
                </#list>
            </#if>
            </tbody>
        </table>
    </div>
</div>
<#include "frame_end.ftl"/>