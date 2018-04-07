<#include "frame.ftl"/>
<script type="text/javascript">
    gvChartInit();

    $(document).ready(function () {
        var elements = ["#myTable1", "#myTable2", "#myTable5", "#myTable3"];
        paint(elements);
        $("#myTable4").gvChart({
            chartType: 'LineChart',
            gvSettings: {
                vAxis: {title: '数据分析'},
                width: 600,
                height: 230
            }
        });
    });

</script>

<div class="part-div">
    <p>代办事项</p>
    <div style="width: 1070px;margin: 0 auto">
        <div class="part-div-child" align="center">
            <p  style="">用户管理<br/><span class="">220条</span></p>
            <img src="static/img/icon_cost.png">
        </div>
        <div class="part-div-child" align="center">
            <p align="center">新闻审核<br/><span class="">325条</span></p>
            <img src="static/img/icon_gold.png">
        </div>
        <div class="part-div-child" align="center">
            <p align="center">违规评论<br/><span class="">26条</span></p>
            <img src="static/img/icon_gold.png">
        </div>
        <div class="part-div-child" align="center">
            <p align="center">档案管理<br/><span class="">220条</span></p>
            <img src="static/img/icon_gold.png">
        </div>
        <div class="part-div-child" align="center">
            <p align="center">数据分析<br/><span class="">3320条</span></p>
            <img src="static/img/icon_gold.png">
        </div>
    </div>
</div>
<div class="part-div">
    <p>概要信息</p>
    <div class="table-div first-table-div" style="margin-left: -15px">
        <table id='myTable5'>
            <caption>会员地区分布</caption>
            <thead>
            <tr>
                <th></th>
                <th>河北</th>
                <th>河南</th>
                <th>湖北</th>
                <th>湖南</th>
                <th>山东</th>
                <th>山西</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th>1200</th>
                <td>540</td>
                <td>300</td>
                <td>150</td>
                <td>180</td>
                <td>120</td>
                <td>180</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="table-div float-table-div">
        <table id='myTable3'>
            <caption>会员性别分布</caption>
            <thead>
            <tr>
                <th></th>
                <th>男</th>
                <th>女</th>
                <th>女</th>
                <th>女</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="table-div float-table-div">
        <table id='myTable1'>
            <caption>会员性别分布</caption>
            <thead>
            <tr>
                <th></th>
                <th>男</th>
                <th>女</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>2</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="table-div float-table-div">
        <table id='myTable2'>
            <caption>会员性别分布</caption>
            <thead>
            <tr>
                <th></th>
                <th>男</th>
                <th>女</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>2</td>
            </tr>
            </tbody>
        </table>
    </div>


</div>
<div class="part-div">

    <div class=" inline-block-part">
        <p>数据分析</p>

        <table id='myTable4'>
            <thead>
            <tr>
                <th></th>
                <th></th>
                <th>第一季度</th>
                <th>第二季度</th>
                <th>第三季度</th>
                <th>第四季度</th>
                <th>总年度</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th>用户量</th>
                <td>1</td>
                <td>1</td>
                <td>2</td>
                <td>4</td>
                <td>7</td>
                <td>3</td>
            </tr>
            <tr>
                <th>下载量</th>
                <td>1</td>
                <td>2</td>
                <td>2</td>
                <td>5</td>
                <td>3</td>
                <td>1</td>
            </tr>
            <tr>
                <th>体育</th>
                <td>1</td>
                <td>4</td>
                <td>2</td>
                <td>1</td>
                <td>6</td>
                <td>6</td>
            </tr>
            <tr>
                <th>经济</th>
                <td>1</td>
                <td>4</td>
                <td>2</td>
                <td>2</td>
                <td>1</td>
                <td>6</td>
            </tr>

            <tr>
                <th>军事</th>
                <td>1</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>6</td>
                <td>6</td>
            </tr>
            </tbody>
        </table>


    </div>

    <div class="inline-block-part" style="margin-left: 10px">
        <p>最新动态</p>
        <div style="width: 600px;height: 230px;background: #fffffd;">
            <p align="right"><a href="#">更多 >></a></p>
            <hr class="layui-layer-border"/>
            <ul class="ul-list layui-upload-list">
                <li>用户 13556154812 ，身份待审核</li>
                <li>用户 13308032858 ，身份待审核</li>
                <li>新闻编号 n45645645622154 ，待审核</li>
            </ul>
        </div>
    </div>
</div>
<#include "frame_end.ftl"/>