<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"   isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<%
    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
    </style>
</head>

<body>
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
    <section id="part1" class="container mt-5">
        <p class="mini_title fw-bold mb-3 fs-4">지금 인기있는 강의</p>
        <div class="d-flex justify-content-between align-items-center">
            <span class="btn btn-outline-dark rounded-circle">◀</span>
            <div class="row w-100">
                <div class="col-md-3 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="subject text-muted">코딩/프론트앤드</p>
                                <h5 class="title">React의 A부터 Z까지 파헤치기(1)</h5>
                                <p class="name">홍길동</p>
                                <p class="rating text-warning">★★★★★</p>
                                <p>가격 : <span class="price">70,000</span></p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="subject text-muted">코딩/프론트앤드</p>
                                <h5 class="title">React의 A부터 Z까지 파헤치기(2)</h5>
                                <p class="name">홍길동</p>
                                <p class="rating text-warning">★★★★★</p>
                                <p>가격 : <span class="price">70,000</span></p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="subject text-muted">코딩/프론트앤드</p>
                                <h5 class="title">React의 A부터 Z까지 파헤치기(3)</h5>
                                <p class="name">홍길동</p>
                                <p class="rating text-warning">★★★★★</p>
                                <p>가격 : <span class="price">70,000</span></p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="subject text-muted">코딩/프론트앤드</p>
                                <h5 class="title">React의 A부터 Z까지 파헤치기(4)</h5>
                                <p class="name">홍길동</p>
                                <p class="rating text-warning">★★★★★</p>
                                <p>가격 : <span class="price">70,000</span></p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <span class="btn btn-outline-dark rounded-circle">▶</span>
        </div>
    </section>

    <section id="part2" class="container mt-5">
        <p class="mini_title fw-bold mb-3 fs-4">새로 올라온 강의</p>
        <div class="d-flex justify-content-between align-items-center">
            <span class="btn btn-outline-dark rounded-circle">◀</span>
            <div class="row w-100">
                <div class="col-md-3 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="subject text-muted">코딩/프론트앤드</p>
                                <h5 class="title">React의 A부터 Z까지 파헤치기(1)</h5>
                                <p class="name">홍길동</p>
                                <p class="rating text-warning">★★★★★</p>
                                <p>가격 : <span class="price">70,000</span></p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="subject text-muted">코딩/프론트앤드</p>
                                <h5 class="title">React의 A부터 Z까지 파헤치기(2)</h5>
                                <p class="name">홍길동</p>
                                <p class="rating text-warning">★★★★★</p>
                                <p>가격 : <span class="price">70,000</span></p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="subject text-muted">코딩/프론트앤드</p>
                                <h5 class="title">React의 A부터 Z까지 파헤치기(3)</h5>
                                <p class="name">홍길동</p>
                                <p class="rating text-warning">★★★★★</p>
                                <p>가격 : <span class="price">70,000</span></p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 mb-4">
                    <a href="#" class="text-decoration-none text-dark">
                        <div class="card">
                            <div class="img card-img-top bg-light" style="height: 250px; background-size: cover;"></div>
                            <div class="card-body">
                                <p class="subject text-muted">코딩/프론트앤드</p>
                                <h5 class="title">React의 A부터 Z까지 파헤치기(4)</h5>
                                <p class="name">홍길동</p>
                                <p class="rating text-warning">★★★★★</p>
                                <p>가격 : <span class="price">70,000</span></p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <span class="btn btn-outline-dark rounded-circle">▶</span>
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



<script src="../main/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
