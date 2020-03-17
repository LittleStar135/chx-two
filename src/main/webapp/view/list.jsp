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

	<form action="/list" method="post">
		<input type="button" value="添加"  onclick="add()">
		联络单号：<input type="text" name="bh" value="${vo.bh }">
		类型：<input type="text" name="type" value="${vo.type }">
		制造部：<input type="text"  name="zz"  value="${vo.zz }">
		备注：<input type="text" name="bz"  value="${vo.bz }">
		报送日期：<input type="date"  name="bs1" value="${vo.bs1 }">  至
		<input type="date" name="bs2"  value="${vo.bs2 }">
		<input type="submit" value="查询">
	</form>
<form>
	<table class="table">
		<tr>
			<td>推送日期</td>
			<td>联络单</td>
			<td>制造部门编号</td>
			<td>制造部</td>
			<td>配件编号</td>
			<td>配件名称</td>
			<td>参考单价</td>
			<td>数量</td>
			<td>金额</td>
			<td>设备部编号</td>
			<td>设备部</td>
			<td>具体技术要求</td>
			<td>审核单价</td>
			<td>审核金额</td>
			<td>配件外送时间</td>
			<td>加工检验</td>
			<td>配件送回时间</td>
			<td>操作</td>
		</tr>
		
		<c:forEach items="${list }" var="wp" varStatus="i">
			<tr>
				
				<td>
					<fmt:formatDate value="${wp.bsdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				
				<td></td>
				<td>${wp.zhizaobh }</td>
				<td>${wp.zhizao }</td>
				<td>${wp.peijianbh }</td>
				<td>${wp.peijian }</td>
				<td>${wp.danjia }</td>
				<td>${wp.num }</td>
				<td>${wp.price }</td>
				<td>${wp.sbbh }</td>
				<td>${wp.sb }</td>
				<td>${wp.jishu }</td>
				<td>${wp.dj }</td>
				<td>${wp.money }</td>
				<td>
				<fmt:formatDate value="${wp.peisong }" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>${wp.jg }</td>
				<td>
				<fmt:formatDate value="${wp.songhui }" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<input type="button" value="修改" onclick="upd('${wp.id}')">
				</td>
			</tr>
		
		</c:forEach>
			<tr>
				<td colspan="20">
					<button name="pageNum" value="1">首页</button>
					<button name="pageNum" value="${page.prePage==0?1:page.prePage }">上一页</button>
					<button name="pageNum" value="${page.nextPage==0?page.pages:page.nextPage }">下一页</button>
					<button name="pageNum" value="${page.pages }">尾页</button>
				</td>
			</tr>
	</table>
	</form>
	
	<script type="text/javascript">
		
		function add() {
			location="/view/add.jsp"
		}
		function upd(id) {
			location="/view/update.jsp?id="+id;
		}
	
	</script>
</body>
</html>