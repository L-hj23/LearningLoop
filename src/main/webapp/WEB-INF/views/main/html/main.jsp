<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"   isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<%--    <script src="../js/main.js"></script>--%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#btnReview').on('click', function(event) {
                event.preventDefault();
                alert('평가하기');
            });

            $('#btnChangeProfileImage').on('click', function() {
                $('#changeProfileImageForm').removeClass('d-none');
            });

            $('#btnCancleEdit').on('click', function() {
                $('#changeProfileImageForm').addClass('d-none');
            });

            $('#btnUpload').on('click', function() {
                $('#inputFile').click();
            });


            // $('#scrollLeft').on('click', function() {
            //     $('#cardContainer').scrollLeft($('#cardContainer').scrollLeft() - 300);
            // });
            // $('#scrollRight').on('click', function() {
            //     $('#cardContainer').scrollLeft($('#cardContainer').scrollLeft() + 300);
            // });

            const scrollAmount = 300; // 한 번에 스크롤되는 픽셀 수

            // 왼쪽으로 스크롤
            $('#scrollLeft').click(function () {
                const container = $('#cardContainer');
                container.animate({ scrollLeft: container.scrollLeft() - scrollAmount }, 300);
            });

            // 오른쪽으로 스크롤
            $('#scrollRight').click(function () {
                const container = $('#cardContainer');
                container.animate({ scrollLeft: container.scrollLeft() + scrollAmount }, 300);
            });

            $('#scrollLeft2').click(function () {
                const container = $('#cardContainer');
                container.animate({ scrollLeft: container.scrollLeft() - scrollAmount }, 300);
            });

            // 오른쪽으로 스크롤
            $('#scrollRight2').click(function () {
                const container = $('#cardContainer2');
                container.animate({ scrollLeft: container.scrollLeft() + scrollAmount }, 300);
            });
        });
    </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <title>teamPJ</title>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
        }

        ul, li {
            list-style: none;
        }

        a {
            color: black;
            text-decoration: none;
        }

        .card-title {
            height: 50px;
        }

        .headerMenu:hover > a {
            color: #fff;
        }

        .lectureWriter {
            font-size: 13px;
        }

        #btnChangeProfileImage, #btnUpload {
            background-color: white;
        }

        #btnChangeProfileImage:hover, #btnUpload:hover {
            background-color: black;
        }



        body {
            font-family: 'Noto Sans KR', sans-serif;
        }
        .card-title {
            height: 50px;
        }
        .lectureWriter {
            font-size: 13px;
        }
        .scroll-container {
            display: flex;
            overflow-x: auto;
            gap: 1rem;
        }
        .scroll-container::-webkit-scrollbar {
            display: none;
        }
    </style>
</head>

<body>
    <header class="bg-light text-center py-5">
        <h1>학습 강의 관리</h1>
    </header>




    <nav class="navbar bg-body-secondary sticky-top ps-3 pe-3">
        <div class="container-fluid">
            <ul class="d-flex align-items-center justify-content-center mb-0 gap-2">
                <li class="d-inline-bloc px-3 border-0 fs-3 fw-bold text-success me-5">teampj</li>
                <li class="headerMenu btn btn-outline-secondary d-inline-block p-2 border-0"><a class="navbar-brand me-0" href="#">home</a></li>
                <li class="headerMenu btn btn-outline-secondary d-inline-block p-2 border-0"><a class="navbar-brand me-0" href="#">lectures</a></li>
                <!-- <li class="headerMenu btn btn-outline-secondary d-inline-block p-2 border-0"><a class="navbar-brand me-0" href="#">tips</a></li>
                <li class="headerMenu btn btn-outline-secondary d-inline-block p-2 border-0"><a class="navbar-brand me-0" href="#">qna</a></li> -->
                <li class="p-1">
                    <div id="search" class="input-group mx-auto" style="min-width: 600px;">
                        <span class="input-group-text border-secondary">강의 검색</span>
                        <input type="text" class="form-control border-secondary">
                        <button class="btn btn-outline-secondary border-secondary"><i class="bi bi-search"></i></button>
                    </div>
                </li>
            </ul>
            <button class="navbar-toggler bg-white me-3" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end overflow-auto" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                    <h4 class="offcanvas-title" id="offcanvasNavbarLabel">MY PAGE</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1">
                        <li class="nav-item">
                            <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="true">My Profile</a>
                            <div class="d-flex align-items-center p-3 card card-body">
                                <div class="position-relative" style="width: 125px; height: 125px;">
                                    <div class="rounded bg-secondary w-100 h-100"></div>
                                    <button id="btnChangeProfileImage" class="btn btn-outline-dark btn-sm position-absolute top-0 end-0">
                                        <i class="bi bi-pencil"></i>
                                    </button>
                                </div>
                                <div class="mt-3">
                                    <h6 class="mb-1 text-center">홍길동</h6>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">My Lectures</a>
                            <ul class="dropdown-menu">
                                <!-- <li><p class="ms-3">업로드한 강의</p></li>
                                <li style="max-height: 250px; overflow: auto;">
                                    <ul>
                                        <li class="dropdown-item p-0 py-1">
                                            <a class="d-flex flex-column" href="#">
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(1)</p>
                                            </a>
                                        </li>
                                        <li class="dropdown-item p-0 py-1">
                                            <a class="d-flex flex-column" href="#">
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(2)</p>
                                            </a>
                                        </li>
                                        <li class="dropdown-item p-0 py-1">
                                            <a class="d-flex flex-column" href="#">
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(3)</p>
                                            </a>
                                        </li>
                                        <li class="dropdown-item p-0 py-1">
                                            <a class="d-flex flex-column" href="#">
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(4)</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li><hr class="dropdown-divider"> -->
                                <li><p class="ms-3">수강중인 강의</p></li>
                                <li style="max-height: 300px; overflow: auto">
                                    <ul>
                                        <li class="dropdown-item p-0 py-1">
                                            <a id="showVideo" class="d-flex flex-row align-items-center justify-content-between" href="../../lecture/html/video.html" target="_blank">
                                                <div class="d-flex flex-column">
                                                    <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(1)</p>
                                                    <p class="lectureWriter text-muted mb-1">홍길동</p>
                                                    <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        <div class="progress-bar bg-success" style="width: 25%">25%</div>
                                                    </div>
                                                </div>
                                                <!-- <div class="ms-2 me-1">
                                                    <button id="btnReview" class="btn btn-outline-secondary btn-sm d-flex align-items-center">
                                                        <i class="bi bi-pencil-square"></i>
                                                    </button>
                                                </div> -->
                                            </a>
                                        </li>
                                        <li class="dropdown-item p-0 py-1">
                                            <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                                <div class="d-flex flex-column">
                                                    <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(2)</p>
                                                    <p class="lectureWriter text-muted mb-1">홍길동</p>
                                                    <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        <div class="progress-bar bg-success" style="width: 25%">25%</div>
                                                    </div>
                                                </div>
                                                <!-- <div class="ms-2 me-1">
                                                    <button class="btn btn-outline-secondary btn-sm d-flex align-items-center">
                                                        <i class="bi bi-pencil-square"></i>
                                                    </button>
                                                </div> -->
                                            </a>
                                        </li>
                                        <li class="dropdown-item p-0 py-1">
                                            <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                                <div class="d-flex flex-column">
                                                    <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(3)</p>
                                                    <p class="lectureWriter text-muted mb-1">홍길동</p>
                                                    <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        <div class="progress-bar bg-success" style="width: 25%">25%</div>
                                                    </div>
                                                </div>
                                                <!-- <div class="ms-2 me-1">
                                                    <button class="btn btn-outline-secondary btn-sm d-flex align-items-center">
                                                        <i class="bi bi-pencil-square"></i>
                                                    </button> 
                                                </div> -->
                                            </a>
                                        </li>
                                        <li class="dropdown-item p-0 py-1">
                                            <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                                <div class="d-flex flex-column">
                                                    <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(4)</p>
                                                    <p class="lectureWriter text-muted mb-1">홍길동</p>
                                                    <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        <div class="progress-bar bg-success" style="width: 25%">25%</div>
                                                    </div>
                                                </div>
                                                <!-- <div class="ms-2 me-1">
                                                    <button class="btn btn-outline-secondary btn-sm d-flex align-items-center">
                                                        <i class="bi bi-pencil-square"></i>
                                                    </button> 
                                                </div> -->
                                            </a>
                                        </li>
                                        <li class="dropdown-item p-0 py-1">
                                            <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                                <div class="d-flex flex-column">
                                                    <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(5)</p>
                                                    <p class="lectureWriter text-muted mb-1">홍길동</p>
                                                    <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                                        <div class="progress-bar bg-success" style="width: 25%">25%</div>
                                                    </div>
                                                </div>
                                                <!-- <div class="ms-2 me-1">
                                                    <button class="btn btn-outline-secondary btn-sm d-flex align-items-center">
                                                        <i class="bi bi-pencil-square"></i>
                                                    </button>
                                                </div> -->
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <!-- 수강후기 바로가기 링크 연결해야함 -->
                        <li class="nav-item">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">My Review</a>
                            <ul class="dropdown-menu">
                                <li><p class="ms-3">My Review</p></li>
                                <ul style="max-height: 300px; overflow: auto;">
                                    <li>
                                        <p class="text-wrap mb-1">내가 적은 수강 후기가 존재하지 않습니다.</p>
                                    </li>
                                </ul>
                            </ul>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">My Cart</a>
                            <ul class="dropdown-menu">
                                <li><p class="ms-3">장바구니</p></li>
                                <ul style="max-height: 300px; overflow: auto;">
                                    <li class="dropdown-item p-0 py-1">
                                        <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                            <div>
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(1)</p>
                                            </div>
                                            <button class="btn btn-outline-secondary btn-sm ms-2 me-1">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </a>
                                    </li>
                                    <li class="dropdown-item p-0 py-1">
                                        <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                            <div>
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(2)</p>
                                            </div>
                                            <button class="btn btn-outline-secondary btn-sm ms-2 me-1">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </a>
                                    </li>
                                    <li class="dropdown-item p-0 py-1">
                                        <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                            <div>
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(3)</p>
                                            </div>
                                            <button class="btn btn-outline-secondary btn-sm ms-2 me-1">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </a>
                                    </li>
                                    <li class="dropdown-item p-0 py-1">
                                        <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                            <div>
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(4)</p>
                                            </div>
                                            <button class="btn btn-outline-secondary btn-sm ms-2 me-1">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </a>
                                    </li>
                                    <li class="dropdown-item p-0 py-1">
                                        <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                            <div>
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(5)</p>
                                            </div>
                                            <button class="btn btn-outline-secondary btn-sm ms-2 me-1">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </a>
                                    </li>
                                    <li class="dropdown-item p-0 py-1">
                                        <a class="d-flex flex-row align-items-center justify-content-between" href="#">
                                            <div>
                                                <p class="lectureTitle text-wrap mb-1">React의 A부터 Z까지 파헤치기(6)</p>
                                            </div>
                                            <button class="btn btn-outline-secondary btn-sm ms-2 me-1">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </a>
                                    </li>
                                </ul>
                            </ul>
                        </li> -->
                        <!-- <li class="nav-item">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">My Tips</a>
                            <ul class="dropdown-menu">
                                <li><p class="ms-3">내가 공유한 팁</p></li>
                                <ul style="max-height: 300px; overflow: auto;">
                                    <li>
                                        <p class="text-wrap mb-1">내가 공유한 팁이 존재하지 않습니다.</p>
                                    </li>
                                </ul>
                            </ul>
                        </li> -->
                        <!-- <li class="nav-item">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">My Qna</a>
                            <ul class="dropdown-menu">
                                <li><p class="ms-3">내가 작성한 질문</p></li>
                                <ul style="max-height: 300px; overflow: auto;">
                                    <li>
                                        <p class="text-wrap mb-1">내가 작성한 질문이 존재하지 않습니다.</p>
                                    </li>
                                </ul>
                            </ul>
                        </li> -->
                    </ul>
                </div>
                <div class="btn btn-outline-secondary mx-auto my-3" style="width: 300px;">로그아웃</div>
            </div>
        </div>
    </nav>
<!-- 사진수정하기폼 -->
    <form id="changeProfileImageForm" class= "d-none position-absolute top-50 start-50 translate-middle z-3 bg-light border border-3 border-secondary rounded text-center" style="width: 500px; height: 500px;" action="" enctype="multipart/form-data">
        <div class="position-relative mx-auto mt-4 mb-4" style="width: 250px; height: 250px; z-index: 9999">
            <div class="rounded bg-secondary w-100 h-100"></div>
            <button id="btnUpload" class="btn btn-outline-dark btn-sm position-absolute top-0 end-0">
                <i class="bi bi-pencil"></i>
            </button>
        </div>
        <input id="inputFile" class="d-none" type="file" accept="image/*">
        <button id="btnSaveEdit" type="button">저장</button>
        <button id="btnCancleEdit" type="button">취소</button>
    </form>

    <main class="container my-4">
<%--        <section id="part1" class="container mt-5">--%>
<%--            <p class="mini_title fw-bold mb-3 fs-4">지금 인기있는 강의</p>--%>

<%--            <div class="d-flex justify-content-between align-items-center">--%>
<%--                <span id="scrollLeft" class="btn btn-outline-dark rounded-circle">◀</span>--%>

<%--                <div class="row w-100 overflow-hidden" id="cardContainer">--%>

<%--                    <div class="col-md-3 mb-4">--%>
<%--                        <a href="#" class="text-decoration-none text-dark">--%>
<%--                            <div class="card">--%>
<%--                                <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>--%>
<%--                                <div class="card-body">--%>
<%--                                    <p class="subject text-muted">코딩/프론트앤드</p>--%>
<%--                                    <h5 class="title">React의 A부터 Z까지 파헤치기(1)</h5>--%>
<%--                                    <p class="name">홍길동</p>--%>
<%--                                    <p class="rating text-warning">★★★★★</p>--%>
<%--                                    <p>가격 : <span class="price">70,000</span></p>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <span id="scrollRight" class="btn btn-outline-dark rounded-circle">▶</span>--%>
<%--            </div>--%>
<%--        </section>--%>
        <section id="part1" class="container mt-5">
            <p class="mini_title fw-bold mb-3 fs-4">지금 인기있는 강의</p>
            <div class="d-flex justify-content-between align-items-center">
                <span id="scrollLeft" class="btn btn-outline-dark rounded-circle">◀</span>
                <div class="scroll-container w-100" id="cardContainer">
                    <c:forEach var="lecture" items="${lectureList}">
                        <div class="col-md-3 mb-4">
                            <a href="/lectureDetail.do?lectureKey=${lecture.lectureKey}&lectureWriterKey=${lecture.lectureWriterKey}" class="text-decoration-none text-dark">
                                <div class="card">
                                    <div class="img card-img-top bg-light" style="height: 250px; background-size: cover; background-image: url('${lecture.lectureImageUrl}');"></div>
                                    <div class="card-body">
                                        <p class="subject text-muted">${lecture.lectureCategory}</p>
                                        <h5 class="title">${lecture.lectureTitle}</h5>
                                        <p class="name">${lecture.lectureWriterName}</p>
                                        <p class="rating text-warning">*****</p>
                                        <p>가격 : <span class="price">${lecture.lecturePrice}</span></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
                <span id="scrollRight" class="btn btn-outline-dark rounded-circle">▶</span>
            </div>
        </section>


        <section id="part2" class="container mt-5">
            <p class="mini_title fw-bold mb-3 fs-4">새로 올라온 강의</p>
            <div class="d-flex justify-content-between align-items-center">
                <span id="scrollLeft2" class="btn btn-outline-dark rounded-circle">◀</span>
                <div class="scroll-container w-100" id="cardContainer2">
                    <c:forEach var="lecture" items="${lectureList}">
                        <div class="col-md-3 mb-4">
                            <a href="#" class="text-decoration-none text-dark">
                                <div class="card">
                                    <div class="img card-img-top bg-light" style="height: 250px; background-size: cover; background-image: url('${lecture.lectureImageUrl}');"></div>
                                    <div class="card-body">
                                        <p class="subject text-muted">${lecture.lectureCategory}</p>
                                        <h5 class="title">${lecture.lectureTitle}</h5>
                                        <p class="name">${lecture.lectureWriterName}</p>
                                        <p class="rating text-warning">*****</p>
                                        <p>가격 : <span class="price">${lecture.lecturePrice}</span></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
                <span id="scrollRight2" class="btn btn-outline-dark rounded-circle">▶</span>
            </div>
        </section>

        <!-- <section id="part3" class="container mt-5">
            <p class="mini_title fw-bold mb-3"><span class="fs-4">다른 사람들의 공부 TIP</span> <span><a href="#" class="text-primary">더보기</a></span></p>
            <div class="row">
                <div class="col-md-6 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card text-center">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="title h5 fw-semibold">매일 복습하는 습관을 가져라!</p>
                                <p class="name">홍길동</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card text-center">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="title h5 fw-semibold">매일 복습하는 습관을 가져라!</p>
                                <p class="name">홍길동</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </section> -->
    </main>

    <footer class="bg-light text-center py-3">
        <p>team project</p>
    </footer>


</body>