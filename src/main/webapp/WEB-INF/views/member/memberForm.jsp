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
    <title>회원가입 페이지</title>
    <style>
        .label-width {
            width: 500px;
        }
        .input-width {
            width: 500px;
        }
        .nav-link {
            margin: 0 10px; 
            color: #d3d3d3; 
        }
        .separator {
            margin: 0 5px; 
        }

        
        .btn-primary {
            background-color: #006400; 
            border-color: #006400;
        }
        .btn-primary:hover {
            background-color: #004d00; 
            border-color: #004d00;
        }
    </style>
</head>
<body>
   <!--  <header class="bg-light text-center py-5">
        <h1>러닝루프</h1>
    </header> -->

    <main class="d-flex align-items-center py-4 bg-body-tertiary justify-content-center">
        <div class="cont_area">
            <div class="login_wrap">
                <div class="id_find_wrap">
                    <div class="find_area">
                        <div class="find_handy">
                            <h2 class="left-align">회원정보 입력</h2>
                            <hr> 
                            <form method="post" name="member" action="${contextPath}/member/addMember.do">
                                <div class="check_member_form">
                                    <!-- 아이디 -->
                                    <div class="d-flex align-items-center mb-3">
                                        <span class="input_txt input-width">
                                            <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해주세요." title="아이디를 입력해주세요." autocomplete="off">
                                        </span>
                                    </div>
                                   <!-- 비밀번호 -->
                                    <div class="d-flex align-items-center mb-3">
                                        <span class="input_txt input-width">
                                            <input type="password" class="form-control" id="userPw" name="userPw" placeholder="비밀번호를 입력해주세요." title="비밀번호를 입력해주세요." autocomplete="off">
                                        </span>
                                    </div>
                                   
                                    <!-- 이메일 -->
                                    <div class="d-flex align-items-center mb-3">
                                        <span class="input_txt input-width">
                                            <input type="text" class="form-control" id="email" name="email" placeholder="이메일을 입력해주세요. example@gmail.com" title="이메일을 입력해주세요." autocomplete="off">
                                        </span>
                                    </div>
                                    
                                    <!-- 이름  -->
                                    <div class="d-flex align-items-center mb-3">
                                        <span class="input_txt input-width">
                                            <input type="text" class="form-control" id="userNm" name="userNm" placeholder="이름을 입력해주세요." title="이름을 입력해주세요." autocomplete="off">
                                        </span>
                                    </div>
                                    
                                    <!-- 강사여부  --> 
                                    <div class="d-flex gap-3">
                                        <div calss="form-check">
                                               <input class="form-check-input"type="radio" name="userType" id="userTypStudent" value="1">
                                               <label class="form-check-lavel" for="userTypStudent">학생</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input"type="radio" name="userType" id="userTypeInstructor" value="2">
                                                <label class="form-check-lavel" for="userTypeInstructor">강사</label>
                                            </div>
                                        </div>
                                    
                                    <!-- 버튼 영역 -->
                                    <div class="btn_sec d-flex justify-content-between">
                                     <%-- <a href="${contextPath}/member/memberForm.do" class="link-primary">회원가입하기</a> --%>
                                        
                                        <a class="nav-link btn btn-light" href="${contextPath}/member/loginForm.do" onClick="clickSubject('JAVASCRIPT')">
                                            이미 가입을 하신 경우: <span class="text-danger">로그인하기</span>
                                        </a>
                                        <button type="submit" class="btn btn-primary" id="btnSearch" name="member" value="join">확인</button>
                                        
                                        
                                        <!-- <button type="submit" class="btn btn-primary" id="btnSearch">가입하기</button>
                                   		<input type="submit" value="가입하기"> -->
                                    </div>
                                </div>

                            </form>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>






<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
<style>
   .text_center{
     text-align:center;
   }
</style>
</head>
<body>
	<form method="post"   action="${contextPath}/member/addMember.do">
	<h1  class="text_center">회원 가입창</h1>
	<table  align="center">
	   <tr>
	      <td width="200"><p align="right">아이디</td>
	      <td width="400"><input type="text" name="id"></td>
	   </tr>
	   <tr>
	      <td width="200"><p align="right">비밀번호</td>
	      <td width="400"><input type="password" name="pwd"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">이름</td>
	       <td width="400"><p><input type="text" name="name"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">이메일</td>
	       <td width="400"><p><input type="text" name="email"></td>
	    </tr>
	    <tr>
	       <td width="200"><p>&nbsp;</p></td>
	       <td width="400"><input type="submit" value="가입하기"><input type="reset" value="다시입력"></td>
	    </tr>
	</table>
	</form>
</body> --%>
