<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- /WEB-INF/jsp/lecture/lectureHeader.jsp -->
<header>
    <div class="container">
        <div class="logo">
            <a href="/">My Lecture Platform</a>
        </div>
        <nav>
            <ul>
                <li><a href="/home">홈</a></li>
                <li><a href="/courses">강의 목록</a></li>
                <li><a href="/about">소개</a></li>
                <li><a href="/contact">문의</a></li>
            </ul>
        </nav>
        <div class="user-info">
            <span>로그인된 사용자: <strong>${user.username}</strong></span>
            <a href="/logout">로그아웃</a>
        </div>
    </div>
</header>

<style>
    header {
        background-color: #333;
        color: white;
        padding: 10px 0;
    }
    .container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 15px;
    }
    .logo a {
        color: white;
        text-decoration: none;
        font-size: 24px;
        font-weight: bold;
    }
    nav ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
        display: flex;
    }
    nav ul li {
        margin-right: 20px;
    }
    nav ul li a {
        color: white;
        text-decoration: none;
        font-size: 16px;
    }
    nav ul li a:hover {
        text-decoration: underline;
    }
    .user-info {
        color: white;
        font-size: 14px;
    }
    .user-info a {
        color: white;
        text-decoration: none;
        margin-left: 10px;
    }
    .user-info a:hover {
        text-decoration: underline;
    }
</style>

</body>
</html>