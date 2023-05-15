<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가계부 등록</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store_menu_table.css">
<!-- 테이블 관련 -->

<!-- 부트스트랩 css 링크 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 

<!-- 아래 4줄 : 상단 탭css 관련 링크 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/store_recommend_style.css" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
.btn-success:hover {
    color: #fff;
    background-color: blue;
    border-color: #1e7e34;
}
.btn-success {
    color: #000;
    background-color: #28a745;
    border-color: #28a745;
}
</style>
</head>
<body>
<header>
		<jsp:include page="../inc/header.jsp"></jsp:include>
</header>
<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper" style="padding-left: 40;padding-left: 40px;padding-left: 40px;">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2><b>가계부</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal" ><i class="material-icons">&#xE147;</i> <span>가계부 추가하기</span></a>
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover" id="menu_table">
				<thead>
					<tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<th>분류</th>
						<th>카테고리</th>
						<th>거래처</th>
						<th>계좌</th>
						<th>날짜</th>
						<th>메모</th>
					</tr>
				</thead>
				<tbody id="table_body">
				</tbody>
			</table>
		</div>
	</div>        
</div>
<!-- 추가 팝업 부분 -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="store_menu_pro.so" method="post" enctype="multipart/form-data">
				<div class="modal-header">						
					<h4 class="modal-title">추가하기</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>분류</label>
							<span>
								<input type="radio" name="n" value="지출">지출
								<input type="radio" name="n" value="수입">수입
								<input type="radio" name="n" value="이체">이체
							</span>					
					</div>
					<div class="form-group">
						<label>카테고리</label>
							<select>
								<option selected="selected">항목을 선택해주세요.</option>
								<option>식비</option>
								<option>생활</option>
								<option>교통비</option>
								<option>통신비</option>
							</select>					
					</div>
					<div class="form-group">
						<label>거래처</label>
						<input class="form-control" name="menu_price" id="menu_price" required="required">
					</div>
					<div class="form-group">
						<label>계좌</label>
						<input class="form-control" name="menu_price" id="menu_price" required="required">
					</div>					
					<div class="form-group">
						<label>날짜</label>
						<textarea class="form-control" name="menu_content" id="menu_content" required="required"></textarea>
					</div>
					<div class="form-group">
						<label>메모/태그</label>
						<textarea class="form-control" name="menu_content" id="menu_content" required="required"></textarea>
					</div>
					<input type="hidden" value="${param.store_idx }" name="store_idx"> 					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-success" value="등록" onclick="add_tr('table_body')">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- 수정 팝업 부분 -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="menuModify.so" method="post" enctype="multipart/form-data">
				<div class="modal-header">						
					<h4 class="modal-title">수정하기</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>분류</label>
							<span>
								<input type="radio" name="n" value="지출">지출
								<input type="radio" name="n" value="수입">수입
								<input type="radio" name="n" value="이체">이체
							</span>					</div>
					<div class="form-group">
						<label>카테고리</label>
							<select>
								<option selected="selected">항목을 선택해주세요.</option>
								<option>식비</option>
								<option>생활</option>
								<option>교통비</option>
								<option>통신비</option>
							</select>					</div>
					<div class="form-group">
						<label>거래처</label>
						<input class="form-control" name="menu_price" id="menu_price" required="required">
					</div>
					<div class="form-group">
						<label>계좌</label>
						<input class="form-control" name="menu_price" id="menu_price" required="required">
					</div>					
					<div class="form-group">
						<label>날짜</label>
						<textarea class="form-control" name="menu_content" id="menu_content" required="required"></textarea>
					</div>
					<div class="form-group">
						<label>메모/태그</label>
						<textarea class="form-control" name="menu_content" id="menu_content" required="required"></textarea>
					</div>
					<input type="hidden" value="${param.store_idx }" name="store_idx"> 					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-info" value="저장하기">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- 삭제 팝업 부분 -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="menuDelete.so" method="post" enctype="multipart/form-data">
				<div class="modal-header">						
					<h4 class="modal-title">가계부 삭제</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>정말 이 가계부를 삭제 하시겠어요?</p>
					<p class="text-warning"><small>삭제된 가계부는 복구되지 않습니다.</small></p>
					<input type="hidden" name="store_idxD" id="store_idxD">
					<input type="hidden" name="menu_idxD" id="menu_idxD">
				</div>
				<div class="modal-footer">
					
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-danger" value="삭제" name="dtl_del">
				</div>
			</form>
		</div>
	</div>
</div>
<footer>
  		<jsp:include page="../inc/footer.jsp"></jsp:include>
</footer>
</body>
</html>