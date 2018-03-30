<#include "frame.ftl">

    <link href="static/css1/update.css" rel="stylesheet" type="text/css">

    <style type="text/css">
        td.alt {
            background-color: #ffc;
            background-color: rgba(230, 127, 34, 0.2);
        }
    </style>

<div>

    <div class="bootstrap-frm">

        <br><br>
        <form action="management/news_update" method="post" class="STYLE-NAME">
            <h1>新闻修改
            </h1>
            <label>
                <span>新闻类型 :</span>
                <input id="typeName" type="text" name="typeName"/>
            </label>
            <label>
                <span>标题 :</span>
                <input id="title" type="text" name="title"/>
            </label>

            <label>
                <span>发布者 :</span>
                <input id="userId" type="text" name="userId"/>
            </label>
            <label>
                <span>发布时间 :</span>
                <input id="createTime" type="date" name="createTime"/>
            </label>
            <label>
                <span>浏览量 :</span>
                <input id="accessCount" type="number" name="accessCount"/>
            </label>
            <label>
                <span>保存路径 :</span>
                <input id="path" type="url" name="path"/>
            </label>

            <label>
                <span>状态 :</span><select name="selection">
                <option value="审核通过">审核通过</option>
                <option value="审核未通过">审核未通过</option>
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