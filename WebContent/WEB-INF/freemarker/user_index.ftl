<#include "index.ftl"/>
<script type="text/javascript" src="static/js/jsapi.js"></script>
<script type="text/javascript" src="static/js/corechart.js"></script>
<script type="text/javascript" src="static/js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="static/js/jquery.ba-resize.min.js"></script>
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
</script>
<script type="text/javascript">
    gvChartInit();
    $(document).ready(function(){
        $('#myTable2').gvChart({
            chartType: 'geochart',
            gvSettings: {
                vAxis: {title: 'No of players'},
                hAxis: {title: 'Month'},
                width: 600,
                height: 350
            }
        });
    });
</script>
<script type="text/javascript">
            gvChartInit();
    $(document).ready(function () {
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
<script type="text/javascript">
    gvChartInit();
    $(document).ready(function () {
        $("#myTable6").gvChart({
            chartType: 'BarChart',
            gvSettings: {
                vAxis: {title: '数据统计'},
                width: 300,
                height: 230
            }
        });
    });
</script>
<div class="part-div" >
数据统计：
        </div>

        <div class="part-div-child"  style="width: 300px;height: 150px;">
            APP下载人数总量：
        </div>

        <div class="part-div-child" style="width: 300px;height: 150px;">
            会员人数：
        </div>

        <div class="part-div-child" style="width: 300px;height: 150px;">
            登陆人数统计：
        </div>

      <div class="part-div-child" style="width: 300px;height: 150px;">
           被举报的人数：
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
        <table id='myTable1'>
            <caption>人员</caption>
            <thead>
            <tr>
                <th></th>
                <th>会员</th>
                <th>普通</th>
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
            <caption>人员</caption>
            <thead>
            <tr>
                <th></th>
                <th>星期一</th>
                <th>星期二</th>
                <th>星期三</th>
                <th>星期四</th>
                <th>星期五</th>
                <th>星期六</th>
                <th>星期七</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
                <td>7</td>
            </tr>
            </tbody>
        </table>
    </div>


</div>
<div class="part-div" style="width: 600px;height: 200px ;float: left" >
    <p>数据分析</p>
    <table id='myTable4'>
        <thead>
        <tr>
            <th></th>
            <th>第一周</th>
            <th>第二周</th>
            <th>第三周</th>
            <th>第四周</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th>用户量</th>
            <td>1</td>
            <td>2</td>
            <td>4</td>
            <td>7</td>
        </tr>
        <tr>
            <th>下载量</th>
            <td>1</td>
            <td>4</td>
            <td>2</td>
            <td>1</td>
        </tr>
        <tr>
            <th>举报量</th>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
        </tr>
        </tbody>
    </table>
</div>
    <script>
        for(var i = 0 ; i < $(".ul-list li").length ; i ++){
            if(i % 2){
                $(".ul-list li").eq(i).css("background","#f2f2f2");
            }
        }
    </script>
    <div class="inline-block-part" style="margin-left: 20px ;width: 600px">
        <p>最新动态</p>
        <div style="width: 500px;height: 200px;background: #fffffd;">
            <p align="right"><a href="#">更多 >></a></p>
            <hr class="layui-layer-border"/>
            <ul class="ul-list">
                <li>sdafdsaf</li>
                <li>sdafdsaf</li>
                <li>sdafdsaf</li>
                <li>sdafdsaf</li>
            </ul>
        </div>

</div>
<#include "frame_end.ftl"/>