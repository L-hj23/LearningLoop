<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%>     

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="search.css">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>로그인 페이지</title>
    
    <!--  로그인버튼 녹색으로 -->
    <style>
    .btn-primary {
    background-color: #006400;
    border-color: #006400;
    color: white;
    }
    .btn-primary:hover {
    background-color: #004d00;
    border-color: #004d00;
    }
    </style>
    
    
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">
  
    <main class="form-signin w-100 m-auto">
        <h1 class="h3 mb-4 text-center">러닝루프</h1>
        <h1 class="h3 mb-3 fw-normal text-center">로그인</h1>

        
          <form class="m-auto" style="width: 800px;" method="post" action="${contextPath}/member/login.do">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="user_id" name="userId" placeholder="아이디" required>
                <label for="floatingInput">아이디</label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control" id="user_password" name="userPw" placeholder="비밀번호" required>
                <label for="floatingPassword">비밀번호</label>
            </div>

            <button class="btn btn-primary w-100 py-2" type="submit">로그인</button>

            <div class="text-center my-3">
            <!-- <a  href=>
            <h1 style="text-align:center">회원가입</h1></a> -->
                <a href="${contextPath}/member/memberForm.do" class="link-primary">회원가입하기</a>
            </div>
        </form>
    </main>

    <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html> 


 <%-- <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  
<title>로그인창</title>
<c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
	    }
	  </script>
	</c:when>
</c:choose>  
</head>

<body>
<form name="frmLogin" method="post"  action="${contextPath}/member/login.do">
   <table border="1"  width="80%" align="center" >
      <tr align="center">
         <td>아이디</td>
         <td>비밀번호</td>
      </tr>
      <tr align="center">
         <td>
	    <input type="text" name="id" value="" size="20">
	 </td>
         <td>
	    <input type="password" name="pwd" value="" size="20">
	 </td>
      </tr>
      <tr align="center">
         <td colspan="2">
            <input type="submit" value="로그인" > 
            <input type="reset"  value="다시입력" > 
         </td>
      </tr>
   </table>
</form>
</body>
</html>
 --%>