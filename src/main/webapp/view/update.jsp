<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 视窗 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>今日头条</title>

<link rel="stylesheet" type="text/css"href="/resource/index.css" />
<script type="text/javascript"src="/jquery/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href="/bootstrap-4.4.1-dist/css/bootstrap.min.css" />
<script type="text/javascript" src="/jquery/jquery.validate.js"></script>
<script type="text/javascript"src="/bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>

</head>
<body>
	
		
	<form action="/add" method="post">
		<tr>
			<td>推送日期</td>
			<td>
				<input type="datetime" name="bsdate">
			</td>
		</tr>
		<tr>
			<td>联络单</td>
			<td>
				<input type="text" name="bh">
			</td>
		</tr>
		<tr><td>制造部门编号</td>
			<td>
				<input type="text" name="zhizaobh">
			</td>
		</tr>
		<tr><td>制造部</td>
			<td>
				<input type="text" name="zhizao">
			</td>
		</tr>
		<tr><td>配件名称</td>
			<td>
				<input type="text" name="peijian">
			</td>
		</tr>
		<tr><td>配件编号</td>
			<td>
				<input type="text" name="peijianbh">
			</td>
		</tr>
		<tr><td>参考单价</td>
			<td>
				<input type="text" name="danjia">
			</td>
		</tr>
		<tr><td>数量</td>
			<td>
				<input type="text" name="num">
			</td>
		</tr>
		<tr><td>金额</td>
			<td>
				<input type="text" name="price">
			</td>
		</tr>
		<tr><td>具体技术要求</td>
			<td>
				<input type="text" name="jishu">
			</td>
		</tr>
		<tr><td>设备部编号</td>
			<td>
				<input type="text" name="sbbh">
			</td>
		</tr>
		<tr><td>设备部</td>
			<td>
				<input type="text" name="sb">
			</td>
		</tr>
		<tr><td>配件外送时间</td>
			<td>
				<input type="datetime" name="peisong">
			</td>
		</tr>
		<tr><td>配件送回时间</td>
			<td>
				<input type="datetime" name="songhui">
			</td>
		</tr>
		<tr><td>审核单价</td>
			<td>
				<input type="text" name="dj">
			</td>
		</tr>
		<tr><td>审核金额</td>
			<td>
				<input type="text" name="money">
			</td>
		</tr>
		<tr><td>加工检验</td>
			<td>
				<input type="text" name="jg">
			</td>
		</tr>
		<tr>
			<td>
				<input type="button" value="修改" onclick="add()">
			</td>
		</tr>
		
	
	
	</form>
	
	<script type="text/javascript">
		function add() {
			$.post(
				"/add",		
				$("form").serialize(),
				function (i) {
					if (i>0) {
						alert("修改成功");
						location="/list";
					}else {
						alert("修改失败");
					}
				}
			)
		}
	
	</script>
	
</body>
</html>