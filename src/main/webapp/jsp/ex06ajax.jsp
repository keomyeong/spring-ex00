<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<script>
			$(function() {
				$("#btn1").click(function() {
					console.log("click btn1");
					$.ajax("${appRoot}/rest06/sub01");
				});
				$("#btn11").click(function() {
					$.ajax({
						url : "${appRoot}/rest06/sub01"
					});
				});
			});
		</script>
		<button id="btn1">버튼일번!</button>
		<button id="btn11">버튼일일번!</button>

		<script>
			$(function() {
				$("#btn2").click(function() {
					var jqXHR = $.ajax("${appRoot}/rest06/sub02");
					jqXHR.done(function() {
						console.log("btn2 done funtion");

					})
				});
			});
		</script>
		<button id="btn2">버튼이번!</button>
		<script>
			$(function() {
				$("#btn3").click(function() {
					$.ajax("${appRoot}/rest06/sub02").done(function(data) {
						console.log("btn3 done funtion");
						console.log(data);

					})
				});
				$("#btn31").click(function() {
					$.ajax({
						url : "${appRoot}/rest06/sub02",
						success : function(res) {
							console.log("btn3-1 success function");
							console.log(res);
						}
					})
				})
			});
		</script>
		<button id="btn3">버튼삼번!</button>
		<button id="btn3">버튼삼다시일번!</button>
		<script>
			$(function() {
				$("#btn4").click(function() {
					$.ajax("${appRoot}/rest06/sub04").done(function() {
						console.log("성공!!!");
					}).fail(function() {
						console.log("실패고!!!");
					});
				})
			})
		</script>
		<button id="btn4">클릭사번</button>
		<script>
			$(function() {
				$("#btn5").click(function() {
					$.ajax({
						url : "${appRoot}/rest06/sub05",
						type : "put" // method로 교체가능
					});
				});
			})
		</script>
		<button id="btn5">BTN5</button>
	</div>
</body>
</html>