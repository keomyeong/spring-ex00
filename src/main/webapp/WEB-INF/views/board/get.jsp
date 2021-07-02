<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="bd" tagdir="/WEB-INF/tags/board"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>
<script>
var appRoot = "${appRoot}";
var boardBno = "${board.bno}";
</script>
<script src="${appRoot }/resources/js/get.js"></script>
<title>Insert title here</title>
</head>
<body>
	<bd:navbar />
	<div id="alert1" class="alert alert-primary fade" role="alert"></div>

	<div class="container">
		<h1>글 보기</h1>

		<div class="row">
			<div class="col-12">
				<form>
					<div class="form-group">
						<label for="input1">제목</label> <input readonly="readonly"
							id="input1" class="form-control" name="title"
							value="${board.title }">
					</div>
					<div class="form-group">
						<label for="textarea1">내용</label>
						<textarea readonly="readonly" id="textarea1" class="form-control"
							name="content"><c:out value="${board.content }" /></textarea>
					</div>
					<div class="form-group">
						<label for="input2">작성자</label> <input readonly="readonly"
							id="input2" class="form-control" name="writer"
							value="${board.writer }">
					</div>

					<c:url value="/board/modify" var="modifyUrl">
						<c:param name="bno" value="${board.bno }" />
						<c:param name="pageNum" value="${cri.pageNum }" />
						<c:param name="amount" value="${cri.amount }" />
						<c:param name="type" value="${cri.type }" />
						<c:param name="keyword" value="${cri.keyword }" />

					</c:url>

					<a class="btn btn-secondary" href="${modifyUrl }">수정/삭제</a>
				</form>
			</div>
		</div>
	</div>

<div class="container">
	<div class="row">
		<div class="col-12">
			<h3>댓글 </h3>
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#reply-insert-modal">댓글 작성</button>
			<ul class="list-unstyled" id="reply-list-container">
			
			</ul>
		</div>
	</div>
</div>




<%-- 댓글 입력 모달 --%>

<div class="modal fade" id="reply-insert-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">새 댓글</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input type="text" value="${board.bno }" readonly hidden id="reply-bno-input1">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">작성자</label>
            <input type="text" class="form-control" id="reply-replyer-input1">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">댓글</label>
            <textarea class="form-control" id="reply-reply-textarea1"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="reply-insert-btn1" type="button" class="btn btn-primary">댓글 입력</button>
      </div>
    </div>
  </div>
</div>
<%-- 댓글 수정, 삭제 모달 --%>
<div class="modal fade" id="reply-modify-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">댓글 수정/삭제</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input type="text" value="" readonly hidden id="reply-rno-input2" >
          <input type="text" value="${board.bno }" readonly hidden id="reply-bno-input2">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">작성자</label>
            <input type="text" class="form-control" id="reply-replyer-input2" readonly>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">댓글</label>
            <textarea class="form-control" id="reply-reply-textarea2"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="reply-modify-btn1" type="button" class="btn btn-primary">댓글 수정</button>
        <button id="reply-delete-btn1" type="button" class="btn btn-danger">댓글 삭제</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>