<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="static/css1/htmleaf-demo.css">
	<link rel="stylesheet" href="static/css1/bootstrap-float-label.css"/>

		<script src="http://cd n.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>

</head>
<body>
	<div class="htmleaf-container">
		<header class="htmleaf-header">


		</header>
		<div class="form-container">
		<form class="well center-block" style="max-width: 35rem">
		    <legend class="text-center">新增</legend>
		    <div class="form-group input-group">
		      <span class="has-float-label">
		        <input class="form-control" id="first" type="text" placeholder="Name"/>
		        <label for="first">姓</label>
		      </span>
		      <span class="has-float-label">
		        <input class="form-control" id="last" type="text" placeholder="Surname"/>
		        <label for="last">名</label>
		      </span>
		    </div>
		    <div class="form-group input-group">

		      <span class="has-float-label">
		        <input class="form-control" id="email" type="email" placeholder="账号"/>
		        <label for="email">账号</label>
		      </span>
		    </div>
		    <div class="form-group has-float-label">
		      <input class="form-control" id="password" type="password" placeholder="••••••••"/>
		      <label for="password">密码</label>
		    </div>
		    <div class="form-group has-float-label">
		      <select class="form-control" id="root">

		        <option>新闻管理</option>
		        <option>用户管理</option>
		      </select>

		    </div>

		    <div>
		      <button class="btn btn-block btn-primary" type="submit">提交</button>
		    </div>
		  </form>
		</div>

	</div>
	
</body>
</html>