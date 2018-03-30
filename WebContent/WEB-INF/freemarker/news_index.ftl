<#include "frame.ftl"/>
<script type="text/javascript" src="static/js/jsapi.js"></script>
<script type="text/javascript" src="static/js/corechart.js"></script>
<script type="text/javascript" src="static/js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="static/js/jquery.ba-resize.min.js"></script>
<script type="text/javascript">
    gvChartInit();

    function paint(target) {
        for (var i = 0; i < target.length; i++) {
            $(target[i]).gvChart({
                chartType: 'PieChart',
                gvSettings: {
                    vAxis: {title: 'No of players'},
                    hAxis: {title: 'Month'},
                    width: 420,
                    height: 230
                }
            });
        }
    }


    $(document).ready(function () {
        var elements = ["#myTable5", "#myTable3"];
        paint(elements);
        $("#myTable4").gvChart({
            chartType: 'LineChart',
            gvSettings: {
                vAxis: {title: '数据分析'},
                width: 700,
                height: 230
            }
        });
    });

</script>
<div class="part-div">
    <p>数据信息</p>
    <div style="width: 1070px;margin: 0 auto">
        <div class="part-div-child"></div>
        <div class="part-div-child"></div>
        <div class="part-div-child"></div>
        <div class="part-div-child"></div>
        <div class="part-div-child"></div>
    </div>
</div>
<div class="part-div">
    <p>概要信息</p>
    <div class="table-div first-table-div">
        <table id='myTable5'>
            <caption>新闻发布类型分布</caption>
            <thead>
            <tr>
                <th></th>
                <th>体育</th>
                <th>经济</th>
                <th>政治</th>
                <th>国际</th>
                <th>军事</th>

            </tr>
            </thead>
            <tbody>
            <tr>
                <th>1400</th>
                <td>540</td>
                <td>300</td>
                <td>150</td>
                <td>180</td>
                <td>200</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="table-div float-table-div">
        <table id='myTable3'>
            <caption>新闻查看量分布</caption>
            <thead>
            <tr>
                <th></th>
                <th>体育</th>
                <th>经济</th>
                <th>政治</th>
                <th>国际</th>
                <th>军事</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td>200</td>
                <td>200</td>
                <td>300</td>
                <td>500</td>
                <td>400</td>
            </tr>
            </tbody>
        </table>
    </div>

<div class="part-div">
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
            <th>发布量</th>
            <td>1</td>
            <td>2</td>
            <td>4</td>
            <td>7</td>
            <td>3</td>
        </tr>
        <tr>
            <th>搜索量</th>
            <td>1</td>
            <td>4</td>
            <td>2</td>
            <td>1</td>
            <td>6</td>
        </tr>
        </tbody>
    </table>
</div>
<#include "frame_end.ftl"/>
