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
        <form action="/management/news_addRelease" method="post" class="STYLE-NAME">
            <h1>添加新闻
            </h1>
            <label>
                <span>新闻类型 :</span><select name="selection">
                <option value="体育">体育</option>
                <option value="娱乐">娱乐</option>
            </select>
            </label>
            <label>
                <span>标题 :</span>
                <input id="title" type="text" name="title"/>
            </label>

            <label>
                <span>内容 :</span>
                <textarea rows="4" cols="50" name="comment" form="usrform"></textarea>
            </label>

            <label>
                <span>&nbsp;</span>
                <input type="submit" class="button" value="提交"/>
            </label>
        </form>
    </div>
</div>


<#include "frame_end.ftl">