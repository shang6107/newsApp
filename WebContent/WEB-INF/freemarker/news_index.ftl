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
        var elements = ["#myTable1", "#myTable2"];
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
        <div class="part-div-child" style="...">
            <h3>新闻总数:&nbsp;&nbsp;${(NewsCount.counts)!""}</h3>
        </div>
        <div class="part-div-child" style="...">
            <h3>发布新闻总数:&nbsp;&nbsp;${(ReleaseCount.counts)!""}</h3>
        </div>
        <div class="part-div-child"></div>
        <div class="part-div-child"></div>
        <div class="part-div-child"></div>
    </div>
</div>
<div class="part-div">
    <p>概要信息</p>
    <div class="table-div first-table-div">
        <table id='myTable1'>
            <caption>新闻发布类型分布</caption>
            <thead>
            <tr>
                <th></th>
                <th>${(sociology.typeName)!""}</th>
                <th>${(sport.typeName)!""}</th>
                <th>${(entertainment.typeName)!""}</th>
                <th>${(finance.typeName)!""}</th>
                <th>${(technology.typeName)!""}</th>
                <th></th>
            </tr>

            </thead>
            <tbody>

            <tr>
                <td>${(sociology.counts)!""}</td>
                <td>${(sport.counts)!""}</td>
                <td>${(entertainment.counts)!""}</td>
                <td>${(finance.counts)!""}</td>
                <td>${(technology.counts)!""}</td>
            </tr>

            </tbody>
        </table>
    </div>
    <div class="table-div float-table-div">
        <table id='myTable2'>
            <caption>新闻搜索量分布</caption>
            <thead>
            <tr>
                <th></th>
                <th>${(sociology.typeName)!""}</th>
                <th>${(sport.typeName)!""}</th>
                <th>${(entertainment.typeName)!""}</th>
                <th>${(finance.typeName)!""}</th>
                <th>${(technology.typeName)!""}</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <tr>

                <td>${(sociology.access_counts)!""}</td>
                <td>${(sport.access_counts)!""}</td>
                <td>${(entertainment.access_counts)!""}</td>
                <td>${(finance.access_counts)!""}</td>
                <td>${(technology.access_counts)!""}</td>
            </tr>

            </tbody>
        </table>
    </div>
    <table>

    </table>
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
