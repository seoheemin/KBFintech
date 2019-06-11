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
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">회원 가입</div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="username" class="form-control" placeholder="User Name" required="required">
              <label for="inputEmail">이름</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required">
              <label for="inputEmail">이메일</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                  <label for="inputPassword">비밀번호</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                  <label for="confirmPassword">비밀번호 확인</label>
                </div>
              </div>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="/member/login">확인</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="${path }/member/login">로그인 하기</a>
          <a class="d-block small" href="${path }/member/forget">비밀번호 찾기</a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>