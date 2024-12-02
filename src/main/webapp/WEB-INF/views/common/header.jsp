<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>헤더</title>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="./main.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
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

        <!-- nav drawer -->
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


</body>
</html>