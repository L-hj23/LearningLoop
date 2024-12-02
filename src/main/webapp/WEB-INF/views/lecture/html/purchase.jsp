<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>강의 구매</title>

    <script src="../js/detail.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- 구매 버튼 동작 -->
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            document.getElementById('btnBuy').addEventListener('click', () => {
                alert('구매가 완료되었습니다.');
                const targetUrl = `/purchaseComplete.do?lectureKey=${lecture.lectureKey}`;
                window.location.href = targetUrl;
            });
        });
    </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            min-width: 1000px;
        }

        ul, li {
            list-style: none;
        }
    </style>
</head>
<body>
<header class="bg-light text-center py-5">
    <h1>학습 강의 관리</h1>
</header>

<div class="container mt-5">
    <h1 class="text-center">강의 구매</h1>

    <div class="card mb-5">
        <div class="row g-0">
            <!-- 강의 이미지 -->
            <div class="col-md-4">
                <img src="${lecture.lectureImageUrl}" class="img-fluid rounded-start" alt="${lecture.lectureTitle}">
            </div>
            <!-- 강의 정보 -->
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">${lecture.lectureTitle}</h5>
                    <p class="card-text"><strong>카테고리:</strong> ${lecture.lectureCategory}</p>
                    <p class="card-text"><strong>강사:</strong> ${lecture.lectureWriterName}</p>
                    <p class="card-text"><strong>평점:</strong> ${lecture.lectureRating} / 5</p>
                    <p class="card-text"><strong>가격:</strong> <span class="text-danger">${lecture.lecturePrice}원</span></p>
                    <p class="card-text">${lecture.lectureContent}</p>
                    <button id="btnBuy" class="btn btn-primary mt-3"><i class="bi bi-credit-card"></i> 구매하기</button>
                </div>
            </div>
        </div>
    </div>


</div>
<footer class="bg-light text-center py-3">
    <p>team project</p>
</footer>


</body>
</html>
