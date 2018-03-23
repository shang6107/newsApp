<script type="text/javascript" src="/static/js/jsapi.js"></script>
<script type="text/javascript" src="/static/js/corechart.js"></script>
<script type="text/javascript" src="/static/js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="/static/js/jquery.ba-resize.min.js"></script>
<script type="text/javascript">
    gvChartInit();

    function paint(target) {
        for (var i = 0 ; i < target.length ; i ++) {
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
        var elements = ["#myTable1","#myTable2","#myTable5","#myTable3"];
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
<div class="part-div" >
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
            <td>2</td>
            <td>4</td>
            <td>7</td>
            <td>3</td>
        </tr>
        <tr>
            <th>下载量</th>
            <td>1</td>
            <td>4</td>
            <td>2</td>
            <td>1</td>
            <td>6</td>
        </tr>
        </tbody>
    </table>
</div>
