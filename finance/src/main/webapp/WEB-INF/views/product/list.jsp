<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/menu.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
	<div class="container">
		<h1 class="my-4" align="center">추천 결과를 확인하세요</h1>
		<hr>
		<div class="row">
			<c:forEach var="baseInfo" items='${product.baseList}'>
				<div class="col-lg-2 col-md-2"></div>
				<div class="card col-lg-8 col-md-8 panel panel-primary">
					<div class="card-body">
						<div class="row">
							<div class="col-lg-9 col-md-9 panel-heading">
								<h3 class="card-title panel-heading"><c:out value='${baseInfo.fin_prdt_nm}'/></h3>
								<h4 class="card-subtitle panel-heading text-muted"><c:out value='${baseInfo.kor_co_nm}'/></h4>
								<span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-down"></i></span>
							</div>
						</div>
					</div>
					<div class="panel-body" >
						<ul class="list-group list-group-flush">
							<li class="list-group-item"><h3>가입방법</h3><c:out value='${baseInfo.join_way}'/></li>
							<li class="list-group-item"><h3>기본금리</h3><c:out value='${baseInfo.join_member}'/>%</li>
							<li class="list-group-item"><h3>최대금리</h3><c:out value='${baseInfo.max_limit}'/>%</li>
							<li class="list-group-item"><h3>만기지급금액(<c:out value='${baseInfo.dcls_strt_day}'/>)%</h3><c:out value='${baseInfo.dcls_strt_day}'/></li>
							<li class="list-group-item"><h3>만기지급금액(<c:out value='${baseInfo.fin_co_subm_day}'/>)%</h3><c:out value='${baseInfo.fin_co_subm_day}'/></li>
							<li class="list-group-item"><button type="button" class="btn btn-outline-info" href="${baseInfo.fin_prdt_cd}"><h3>자세히 보기</h3></button></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-2"></div>
			</c:forEach>
		</div>
		<hr>
		<!-- Pagination -->
		<ul class="pagination justify-content-center">
			<c:if test="${pageMaker.prev }">
			<li class="page-item">
				<a class="page-link" href="${pageMaker.startPage-1 }" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span> 
					<span class="sr-only">Previous</span>
				</a>
			</li>
			</c:if>
			<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<li class="page-item ${pageMaker.cri.pageNum == num ? 'active' : '' }">
					<a class="page-link" href="${num }">${num }</a>
				</li>
			</c:forEach>
			
			<c:if test="${pageMaker.next }">
			<li class="page-item">
				<a class="page-link" href="${pageMaker.endPage+1 }"aria-label="Next"> 
				<span aria-hidden="true">&raquo;</span> 
				<span class="sr-only">Next</span>
				</a>
			</li>
			</c:if>
		</ul>
		<!--  -->
	</div>
	<!-- /.container -->
	<form id="actionForm" action="${path}/product/list" method="post">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	</form>
	<script type="text/javascript">
		$(document).ready(function(){
			
			var actionForm = $("#actionForm");
			$(".page-item a").on("click", function(e){
				e.preventDefault();
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
			});
			
			var panel = $(".panel");
			panel.find(".panel-body").slideUp();
			panel.find(".panel-heading span.clickable").addClass("panel-collapsed");
			panel.find(".panel-heading span.clickable").find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
			
			$(".panel-heading span.clickable").on("click",function(e){

				var $this = $(this);
				if(!$this.hasClass('panel-collapsed')) {
					$this.parents('.panel').find('.panel-body').slideUp();
					$this.addClass('panel-collapsed');
					$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
					
				} else {
					$this.parents('.panel').find('.panel-body').slideDown();
					$this.removeClass('panel-collapsed');
					$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
					
				}
				});
		});
	</script>
</body>
</html>