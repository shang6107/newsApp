<#--
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
    <link rel="stylesheet" href="css/samples-styles.css">
    <style type="text/css">
        td.alt { background-color: #ffc; background-color: rgba(230, 127, 34, 0.2); }
    </style>
</head>
<body>
<div class="htmleaf-container">
    <header class="htmleaf-header">


    </header>
    <div class="htmleaf-content">
        <div class="input-group">
            <div class="input-group-addon">过滤条件</div>
            <input class="form-control" type="search" id="input-filter" size="15" placeholder="输入过滤条件"></input>
        </div>
        <br>
        <table class="">
            <thead>
            <tr>
                <th scope="col" title="President Number">#</th>
                <th scope="col">headImg</th>
                <th scope="col">phoneNum</th>
                <th scope="col">nickName</th>
                <th scope="col">password</th>

                <th scope="col">birth</th>
                <th scope="col">address</th>
                <th scope="col">hobby</th>
                <th scope="col">introduce</th>
                <th scope="col">lastTime</th>
                <th scope="col">createTime</th>
                <th scope="col">lastTime</th>


            </tr>
            </thead>
            <tbody>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>

            </tbody>
        </table>

    </div>

</div>

<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
<script src="js/jquery.filtertable.min.js"></script>
<script>
    $(document).ready(function() {
        $('table').filterTable({ // apply filterTable to all tables on this page
            inputSelector: '#input-filter' // use the existing input instead of creating a new one
        });
    });
</script>
</body>
</html>-->
