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
        <form action="management/insertRelease" method="post" class="STYLE-NAME">
            <h1>添加新闻
            </h1>
            <label>
                <span>新闻类型 :</span><select name="typeName">
                <option value="1">社会</option>
                <option value="2">体育</option>
                <option value="3">娱乐</option>
                <option value="4">财经</option>
                <option value="5">科技</option>
            </select>
            </label>
            <label>
                <span>标题 :</span>
                <input id="title" type="text" name="title"/>
            </label>

            <label>
                <span>内容 :</span>
                <textarea rows="4" cols="50" name="path" form="path"></textarea>
            </label>

            <label>
                <span>&nbsp;</span>
                <input type="submit" class="button" value="提交"/>
            </label>
        </form>
    </div>
</div>


<#include "frame_end.ftl">