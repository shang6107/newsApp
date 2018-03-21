<#import "spring.ftl" as spring/>
<#if Request.contextPath?exists>
    <#assign path = Request.contextPath/>
</#if>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="${path!''}/">
    <meta charset="UTF-8">
    <script type="text/javascript" src="static/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="static/css/identify.css" />
    <link rel="stylesheet" type="text/css" href="static/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="static/css/style.css" />
    <link rel="stylesheet" type="text/css" href="static/css/login.css" />
    <link rel="stylesheet" type="text/css" href="static/css/control_index.css" />
    <script type="text/javascript" src="static/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="static/js/layer.js"></script>
    <script type="text/javascript" src="static/js/haidao.offcial.general.js"></script>
    <script type="text/javascript" src="static/js/select.js"></script>
    <script type="text/javascript" src="static/js/haidao.validate.js"></script>
</head>
<body>