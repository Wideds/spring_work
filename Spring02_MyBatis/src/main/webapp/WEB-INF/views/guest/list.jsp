<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/guest/list.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	
	<!--메뉴바 추가 부분-->
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
	  <a class="navbar-brand" href="${pageContext.request.contextPath }/.">HOME</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarsExample03">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="${pageContext.request.contextPath }/guest/list">Board <span class="sr-only"></span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Q&A</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link disabled" href="#">Disabled</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
	        <div class="dropdown-menu" aria-labelledby="dropdown03">
	          <a class="dropdown-item" href="#">Action</a>
	          <a class="dropdown-item" href="#">Another action</a>
	          <a class="dropdown-item" href="#">Something else here</a>
	        </div>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-md-0">
	      <input class="form-control" type="text" placeholder="Search">
	    </form>
	  </div>
	</nav>
	
	<div class="container">
		<h1>방명록 글 목록</h1>
		<div>
			<a href="${pageContext.request.contextPath }/guest/insertform">글 작성</a>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>등록일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tmp" items="${list }">
	               <tr>
	                  <td>${tmp.num }</td>
	                  <td>${tmp.writer }</td>
	                  <td><textarea rows="5">${tmp.content }</textarea></td>
	                  <td>${tmp.regdate }</td>
	                  <td><a href="updateform?num=${tmp.num }">수정</a></td>
	                  <td>
	                  	<form action="delete" method="post">
							<input type="hidden" name="num" value="${tmp.num }"/>
							<input type="password" name="pwd" placeholder="비밀번호..."/>
							<button type="submit">삭제</button>
						</form>
	                  </td>
	               </tr>
            	</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>