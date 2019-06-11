<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/menu.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">나에게 맞는 금융상품 찾기</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">

					<div class="panel-heading">나에게 맞는 금융상품 찾기</div>
					<!-- /.panel-heading -->
					<div class="panel-body">

						<form role="form" action="${path }/product/list" method="post">
							<div class="form-group">
								<label>가입기간</label> <input class="form-control" name='period'>
							</div>

							<div class="form-group">
								<label>성별</label> 
								<input type="radio" name="sex" value="male">남자
								&nbsp; &nbsp; <input type="radio" name="sex" value="female">여자
								&nbsp; &nbsp;
							</div>

							<div class="form-group">
								<label>생년월일(yyyy-mm-dd)</label> <input class="form-control"
									name='birth'>
							</div>

							<div class="form-group">
								<label>방문 은행 지역</label> <select name="region">
									<option values="서울">서울</option>
									<option values="부산">부산</option>
									<option values="대전">대전</option>
								</select>
							</div>
							<button type="submit" class="btn btn-default">확인</button>
							<button type="reset" class="btn btn-default">취소</button>
						</form>
					</div>
					<!--  end panel-body -->
				</div>
				<!--  end panel-body -->
			</div>
			<!-- end panel -->
		</div>
	</div>
</body>
</html>