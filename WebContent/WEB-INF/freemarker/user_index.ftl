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
            APP下载人数总量：${(countAll.all)!""}
        </div>

        <div class="part-div-child" style="width: 300px;height: 150px;">
             编辑人员：${(typename.typename)!""}


        </div>

        <div class="part-div-child" style="width: 300px;height: 150px;">
           普通用户：${(countAll.all-typename.typename)!""}
        </div>

      <div class="part-div-child" style="width: 300px;height: 150px;">
           被举报的人数：${(reports.report)!"0"}
      </div>


<div class="part-div">
    <p>概要信息</p>
    <div class="table-div first-table-div">
        <table id='myTable5'>
            <caption>用户类型</caption>
            <thead>
            <tr>
                <th></th>
                <th>编辑人员</th>
                <th>普通人员</th>

            </tr>
            </thead>
            <tbody>
            <tr>

                <td>${(typename.typename)!""}</td>
                <td>${'${(countAll.all-typename.typename)!""}'}</td>

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

                <td>${(test.male)!""}</td>
                <td>${(countAll.all-test.male)!""}</td>

            </tr>
            </tbody>
        </table>
    </div>
    <div class="table-div float-table-div">
        <table id='myTable1'>
            <caption>用户状态</caption>
            <thead>
            <tr>
                <th></th>
                <th>正常</th>
                <th>冻结</th>
                <th>异常</th>
                <th>失效</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${(countAll.all-countFreeze.freeze-abnormals.abnormal-countFailure.failure)!""}</td>
                <td>${(countFreeze.freeze)!""}</td>
                <td>${(abnormals.abnormal)!""}</td>
                <td>${(countFailure.failure)!""}</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="table-div float-table-div">
        <table id='myTable2'>
            <caption>人员使用</caption>
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
<div class="part-div" style="width: 700px;height: 250px ;float: left" >
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
            <hr class="layui-layer-border"/>
            <table class="tables">
                <thead>
                <tr>
                    <th scope="col">举报人</th>
                    <th scope="col">&nbsp &nbsp 被举报人</th>
                    <th scope="col">&nbsp &nbsp 举报内容</th>
                    <th scope="col">&nbsp &nbsp 举报时间</th>

                </tr>
                </thead>
                <tbody>

                <#if report??>
                    <#list report as report1>
                    <tr>
                        <td >${report1.reporterId!"无"}</td>
                        <td>&nbsp &nbsp ${report1.reportedId}</td>

                        <td>&nbsp &nbsp ${report1.reportedContent!"无"}</td>

                        <td>
                        &nbsp &nbsp <#if report1.createTime?exists>
                      ${report1.createTime?string("yyyy-MM-dd")}
                    </#if>

                    </#list>
                </#if>
                </tbody>
            </table>
        </div>

</div>

<#include "frame_end.ftl"/>