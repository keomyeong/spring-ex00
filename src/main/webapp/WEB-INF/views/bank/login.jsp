<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="bn" tagdir="/WEB-INF/tags/Bank" %>

<!DOCTYPE html>
<html>
<head>

<%@ include  file = "/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>

<div class= "container" style = "margin: auto; vertical-align:middle;">
<div style = "text-align:center;">
<br>
<hr>
<h1>BAMBANK</h1>
</div>
<hr>
<div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" id="addon-wrapping">ID</span>
  </div>
  <input type="text" class="form-control" placeholder="ID" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" id="addon-wrapping">PASSWORD</span>
  </div>
  <input type="text" class="form-control" placeholder="PassWord" aria-label="PassWord" aria-describedby="addon-wrapping">
</div>

<div style ="text-align:right; ">
<input class="btn btn-primary" type="submit" value="LOGIN">

<input class="btn btn-primary" type="submit" value="회원가입">
</div>


</div>
</body>
</html>