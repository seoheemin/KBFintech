<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../includes/header.jsp" %>
<%@include file="../includes/menu.jsp" %>
</head>
<body>
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">로그인</div>
			<div class="card-body">
				<form>
					<div class="form-group">
						<div class="form-label-group">
							<input type="email" id="inputEmail" class="form-control"
								placeholder="Email address" required="required"
								autofocus="autofocus"> <label for="inputEmail">이메일</label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<input type="password" id="inputPassword" class="form-control"
								placeholder="Password" required="required"> <label
								for="inputPassword">비밀번호</label>
						</div>
					</div>
					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox" value="remember-me">
								비밀번호 저장하기
							</label>
						</div>
					</div>
					<a class="btn btn-primary btn-block" href="/">로그인</a>
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="${path }/member/register">회원가입</a> 
					<a class="d-block small" href="${path }/member/forget">비밀번호 찾기</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>