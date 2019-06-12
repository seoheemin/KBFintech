<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${path }/resources/css/basic.css"/>
<style>
.basic{
	width:100px;
	height:100px;
	padding: 100px;
}
</style>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/menu.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row basic">
			
		
		</div>
		
		<div class="row basic">
			<div class="form-group col-lg-6 col-md-6 col-xs-6">
				<label for ="cardNum">카드번호</label>
			</div>
			
			<div class="col-lg-6 col-md-6 col-xs-6">
				<input type="text" class="form-control" name="cardNum"/>
			</div>
		</div>
	</div>

</body>
</html>