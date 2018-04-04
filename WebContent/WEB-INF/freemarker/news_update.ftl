<#include "frame.ftl">

    <link href="static/css1/update.css" rel="stylesheet" type="text/css">

    <style type="text/css">
        td.alt {
            background-color: #ffc;
            background-color: rgba(230, 127, 34, 0.2);
        }
        .STYLE-NAME input{
            border: 1px solid black;
        }
    </style>

<div>

    <div class="bootstrap-frm">

        <br><br>
        <form action="management/news_updateRelease" method="post" class="STYLE-NAME">

            <h1>新闻修改
            </h1>
            <label>
                <span>新闻ID :</span>
                <input id="id" type="text" value="${(release.id)!''}" name="id" readonly/>
            </label>
            <label>
                <span>新闻类型 :</span>
                <select name="typeName">
                <option id="typeName" value="${(release.newTypeId.id)!''}">${(release.newTypeId.typeName)!''}</option>
                <option value="1">社会</option>
                <option value="2">体育</option>
                <option value="3">娱乐</option>
                <option value="4">财经</option>
                <option value="5">科技</option>
            </select>

            </label>
            <label>
                <span>标题 :</span>
                <input id="title" type="text" name="title" value="${(release.title)!''}" readonly/>
            </label>

            <label>
                <span>发布者 :</span>
                <input id="userId" type="text" name="ids" value="${(release.userId.nickName)!''}" readonly/>
            </label>
            <label>
                <span>浏览量 :</span>
                <input id="accessCount" type="number" name="accessCount" value="${(release.accessCount)!''}" readonly/>
            </label>
            <label>
                <span>保存路径 :</span>
                <input id="path" type="url" name="path" value="${(release.path)!''}" readonly/>
            </label>

            <label>
                <span>状态 :</span><select name="statusReason">
                <option id="statusReason" value="${(release.status.status)!''}">${(release.status.reason)!''}</option>
                <option value="1">审核中</option>
                <option value="2">审核通过</option>
                <option value="3">审核未通过</option>
            </select>
            </label>
            <label>
                <span>&nbsp;</span>
                <input type="submit" class="button" value="提交"/>
            </label>
        </form>
    </div>
</div>

<#include "frame_end.ftl">