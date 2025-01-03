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

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>

        $(document).ready(function() {
            $('#btnBuy').click(function() {
                <%--${sessionScope.member}--%>
                window.location.href = '/lecturePurchase.do?lectureKey=${lectureDetail.lectureKey}'; // 이동할 페이지 URL
            });
        });
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <title>TeamPJ</title>
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

    <main class="container my-4">
        <section id="lectureHeader" class="container d-flex justify-content-center align-items-center mb-3" style="height: 350px;">
            <div class="align-items-center me-5" style="width: 300px;">
                <div class="card">
                    <img class="img-thumbnail bg-light" src="" alt="" style="height: 300px;">
                </div>
                <p class="rating text-warning fs-4 text-center">
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                </p>
            </div>
            <div class="mb-3" style="width: 700px;">
                <div class="form-floating mb-3">
                    <p class="form-control fw-semibold fs-5 overflow-auto" style="min-height: 75px;">
                        React의 A부터 Z까지 파헤치기
                    </p>
                    <label>강의 제목</label>
                </div>
                <div class="form-floating mb-3">
                    <p class="form-control fw-semibold fs-5 overflow-auto" style="min-height: 75px;">
                        어디서도 본 적 없는 명품 강의, 누구보다 쉽게 가르쳐드립니다.
                    </p>
                    <label>강의 부제목</label>
                </div>
                <div class="form-floating" style="margin-bottom: 35px;">
                    <p class="form-control fw-semibold fs-5 overflow-auto" style="min-height: 75px; font-size: 20px;">
                        홍길동
                    </p>
                    <label>강사</label>
                </div>
            </div>
        </section>

        <section id="lectureMain" class="container d-flex justify-content-between">
            <div id="lectureContent" class="card" style="width: 70%; max-width: 900px; height: 1000px;">
                <h5 class="card-title fw-semibold py-3 text-center bg-light border-bottom">강의 소개</h5>
                <div class="card-body overflow-auto">
                    <p class="card-text">
                        안녕하세요! 이 강의를 선택해 주셔서 감사합니다. <strong>React</strong>는 현대 웹 개발의 핵심 기술로, 여러분이 효율적이고 고급스러운 웹 애플리케이션을 구축할 수 있도록 도와줄 것입니다. 강의를 통해 <strong>기본</strong>부터 <strong>고급</strong>까지, <strong>React</strong>의 모든 것을 배우며 즐겁게 성장해 나가세요.<br><br>
                        이 강의는 <strong>React</strong>를 배우고자 하는 사람들을 위한 종합적인 학습 과정입니다. <strong>React</strong>는 현대적인 웹 애플리케이션을 구축하는 데 필수적인 라이브러리로, 사용자의 <strong>인터페이스(UI)</strong>를 효율적으로 관리할 수 있게 해주는 도구입니다. 이 강의에서는 React의 <strong>기본 개념</strong>부터 <strong>고급 기능</strong>까지 단계적으로 학습할 수 있습니다. 각 주제는 이론뿐만 아니라 실제 <strong>프로젝트</strong>를 중심으로 진행되며, 이론적 지식과 함께 실습을 통해 개념을 이해하고 적용할 수 있도록 돕습니다.<br><br>
                        강의의 첫 번째 부분은 React의 <strong>기초 개념</strong>을 소개하는 데 집중합니다. <strong>컴포넌트</strong>, <strong>JSX</strong>, <strong>Props</strong>, <strong>State</strong>와 같은 기본 개념을 실습과 함께 설명하며, React의 철학인 "컴포넌트 기반 개발"의 중요성에 대해서도 다룹니다. 이를 통해, 여러분은 React로 인터페이스를 구축하는 데 필요한 기초적인 지식과 기술을 습득하게 됩니다.<br><br>
                        강의의 중반부에서는 <strong>상태 관리</strong>, <strong>이벤트 처리</strong>, <strong>폼 관리</strong>, <strong>리스트 렌더링</strong> 등 좀 더 실용적인 내용을 다루게 됩니다. 이 부분에서는 사용자의 입력을 처리하고, 애플리케이션 상태를 관리하는 방법에 대해 심도 깊게 학습합니다. <strong>React Hooks</strong>와 같은 고급 기능을 다루면서 함수형 컴포넌트로의 전환을 이해하고, 코드의 효율성을 높이는 방법을 배웁니다. 특히, <strong>useState</strong>, <strong>useEffect</strong>, <strong>useContext</strong>와 같은 핵심 Hook을 어떻게 활용할 수 있는지에 대해 실제 예제를 통해 학습합니다.<br><br>
                        후반부에서는 <strong>React Router</strong>를 사용한 페이지 이동과, <strong>Context API</strong>를 활용한 전역 상태 관리, 그리고 <strong>Redux</strong>와 같은 외부 라이브러리를 사용하여 복잡한 상태를 관리하는 고급 주제를 다룹니다. 이 부분에서는 대규모 애플리케이션을 구축할 때의 상태 관리 전략을 이해하고, 여러 페이지 간의 상태 공유와 데이터 흐름을 어떻게 최적화할 수 있는지에 대해 실습을 통해 학습합니다.<br><br>
                        또한, 이 강의는 실제 프로젝트를 진행하면서 이론을 실제 환경에 어떻게 적용할 수 있는지를 배웁니다. 강의 중간 중간, 여러분은 실제 React 애플리케이션을 개발하는 과정에서 마주칠 수 있는 문제들을 해결하는 법을 배우게 됩니다. 이를 통해 코드 작성 능력을 한층 더 향상시킬 수 있으며, 실제 프로젝트에서 React를 사용해 문제를 해결하는 능력을 키울 수 있습니다.<br><br>
                        강의의 마지막 부분에서는 React의 최적화 기법과 테스트에 대해 다루며, 코드 품질을 높이고 성능을 최적화하는 방법을 배웁니다. <strong>React Performance Optimization</strong>, <strong>Lazy Loading</strong>, <strong>Code Splitting</strong> 등을 통해 애플리케이션 성능을 향상시키고, 실제 사용자 경험을 개선할 수 있는 방법에 대해 설명합니다. 또한, <strong>Jest</strong>와 같은 도구를 사용하여 React 컴포넌트를 어떻게 테스트하고, 어떻게 안정성 높은 코드를 작성할 수 있는지에 대해 심도 있게 다룹니다.<br><br>
                        이 강의는 초보자부터 고급 개발자까지 모두 수용할 수 있는 다양한 레벨의 콘텐츠로 구성되어 있습니다. 각 단원은 초보자가 따라올 수 있도록 상세하게 설명하며, 고급 개발자에게는 실무에서 바로 활용할 수 있는 고급 개념과 기술을 제공합니다. 강의를 수료한 후, 여러분은 React를 통해 복잡한 웹 애플리케이션을 구축할 수 있는 능력을 갖추게 되며, 자신만의 프로젝트를 효율적으로 개발할 수 있는 실력을 갖추게 됩니다.<br><br>
                        이 강의를 통해 React의 핵심 개념을 체계적으로 익히고, 실제 프로젝트를 구현할 수 있는 능력을 키울 수 있습니다. 여러분이 이 강의를 통해 얻을 지식과 경험은 앞으로의 개발 여정에 큰 도움이 될 것입니다. 이제 여러분의 <strong>React 개발 여정</strong>을 시작해 보세요!
                    </p>
                </div>
            </div>
            <aside id="lectureAside" class="card" style="width: 29%; max-width: 400px;">
                <div style="height: 200px; overflow: auto;">
                    <h5 class="card-title fw-semibold py-3 text-center bg-light border-bottom">강의 가격</h5>
                    <div class="card-body text-center">
                        <p class="fs-5">70,000원</p>
                        <button id="btnBuy" class="btn btn-outline-primary" type="button"><i class="bi bi-credit-card"></i> 구매하기</button>
                        <button id="btnCart" class="btn btn-outline-success" type="button" data-bs-toggle="modal" data-bs-target="#addToCartModalForm" hidden="hidden"><i class="bi bi-cart-plus"></i> 장바구니</button>
                    </div>  
                </div> 
                <div style="height: 725px;">
                    <h5 class="card-title fw-semibold py-3 text-center bg-light border-top border-bottom">수강평</h5>
                    <div style="height: 725px; overflow: auto;">
                        <div class="commentBox m-3 card">
                            <div class="m-2">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="fw-semibold">홍길동</span>
                                    <span class="text-dark-emphasis" style="font-size: 14px;">2024. 11. 11</span>
                                </div>
                                <p class="rating text-warning fs-6 mb-1 text-end">
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                </p>
                                <div class="mb-1">
                                    <p class="fs-6 m-1">
                                        React 강의를 통해 기초부터 고급 기능까지 정말 많은 것을 배웠습니다. 각 개념이 단계적으로 잘 설명되어 이해하기 쉬웠고, 실습 프로젝트를 통해 이론을 실제로 적용해볼 수 있어서 좋았습니다. 특히 Hooks와 상태 관리 부분에서 실무에 바로 사용할 수 있는 유용한 팁들을 얻을 수 있었습니다. React를 처음 배우는 사람에게도, 이미 기초를 알고 있는 사람에게도 모두 유익한 강의라고 생각합니다. 강의 마지막에 다룬 최적화와 테스트 부분도 큰 도움이 되었고, 이제는 자신 있게 React 프로젝트를 시작할 수 있을 것 같습니다. 강력히 추천합니다!
                                    </p>
                                </div>
                                <div class="d-flex gap-1">
                                    <button class="btn btn-outline-secondary d-flex align-items-center justify-content-center p-0 fw-semibold" style="width: 70px; height: 25px; font-size: 13px;" type="button" data-bs-toggle="collapse" data-bs-target="#showReply" aria-expanded="false" aria-controls="showReply">답글 (2)</button>
                                    <button class="btn btn-outline-secondary d-flex align-items-center justify-content-center p-0 fw-semibold" style="width: 70px; height: 25px; font-size: 13px;" type="button" data-bs-toggle="collapse" data-bs-target="#writeReply" aria-expanded="false" aria-controls="writeReply">답글 작성</button>  
                                </div>
                                <div class="collapse mt-2" id="writeReply">
                                    <form class="card card-body bg-light p-0">
                                        <textarea id="valueComment" class="form-control bg-light" style="resize: none;" rows="3" placeholder="답글을 입력하세요."></textarea>
                                    </form>
                                    <div class="d-flex gap-1 mt-2 justify-content-end">
                                        <button id="btnSubmitComment" class="btn btn-secondary align-items-center justify-content-center p-0 fw-semibold" style="width: 60px; height: 25px; font-size: 13px;" type="button" disabled>등록</button>
                                    </div>
                                </div>
                                <div class="collapse" id="showReply">
                                    <ul class="mb-0 ps-2">
                                        <li class="d-flex gap-2 mt-2">
                                            <i class="bi bi-arrow-return-right text-dark-emphasis"></i>
                                            <div class="card card-body p-2 pb-0 bg-light">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <span class="fw-semibold">홍길동</span>
                                                    <span class="text-dark-emphasis" style="font-size: 14px;">2024. 11. 11</span>
                                                </div>
                                                <div class="mb-1">
                                                    <p class="fs-6 m-1">
                                                        강의 수강 후 좋은 후기를 남겨주셔서 감사합니다! 기초부터 고급 내용까지 잘 전달된 것 같아서 저도 매우 기쁩니다. React 프로젝트에 도움이 되셨다면 정말 뿌듯하네요. 앞으로도 실무에서 유용하게 활용하시길 바랍니다!
                                                    </p>  
                                                </div>
                                            </div>
                                        </li>
                                        <li class="d-flex gap-2 mt-2">
                                            <i class="bi bi-arrow-return-right text-dark-emphasis"></i>
                                            <div class="card card-body p-2 pb-0 bg-light">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <span class="fw-semibold">홍길동</span>
                                                    <span class="text-dark-emphasis" style="font-size: 14px;">2024. 11. 11</span>
                                                </div>
                                                <div class="mb-1">
                                                    <p class="fs-6 m-1">
                                                        강의 수강 후 좋은 후기를 남겨주셔서 감사합니다! 기초부터 고급 내용까지 잘 전달된 것 같아서 저도 매우 기쁩니다. React 프로젝트에 도움이 되셨다면 정말 뿌듯하네요. 앞으로도 실무에서 유용하게 활용하시길 바랍니다!
                                                    </p>  
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="commentBox m-3 card">
                            <div class="m-2">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="fw-semibold">홍길동</span>
                                    <span class="text-dark-emphasis" style="font-size: 14px;">2024. 11. 11</span>
                                </div>
                                <p class="rating text-warning fs-6 mb-1 text-end">
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                    <i class="bi bi-star-fill"></i>
                                </p>
                                <div class="mb-1">
                                    <p class="fs-6 m-1">
                                        React 강의를 통해 기초부터 고급 기능까지 정말 많은 것을 배웠습니다. 각 개념이 단계적으로 잘 설명되어 이해하기 쉬웠고, 실습 프로젝트를 통해 이론을 실제로 적용해볼 수 있어서 좋았습니다. 특히 Hooks와 상태 관리 부분에서 실무에 바로 사용할 수 있는 유용한 팁들을 얻을 수 있었습니다. React를 처음 배우는 사람에게도, 이미 기초를 알고 있는 사람에게도 모두 유익한 강의라고 생각합니다. 강의 마지막에 다룬 최적화와 테스트 부분도 큰 도움이 되었고, 이제는 자신 있게 React 프로젝트를 시작할 수 있을 것 같습니다. 강력히 추천합니다!
                                    </p>
                                </div>
                                <div class="d-flex gap-1">
                                    <button class="btn btn-outline-secondary d-flex align-items-center justify-content-center p-0 fw-semibold" style="width: 70px; height: 25px; font-size: 13px;" type="button" data-bs-toggle="collapse" data-bs-target="#showReply" aria-expanded="false" aria-controls="showReply">답글 (2)</button>
                                    <button class="btn btn-outline-secondary d-flex align-items-center justify-content-center p-0 fw-semibold" style="width: 70px; height: 25px; font-size: 13px;" type="button" data-bs-toggle="collapse" data-bs-target="#writeReply" aria-expanded="false" aria-controls="writeReply">답글 작성</button>  
                                </div>
                                <div class="collapse mt-2" id="writeReply">
                                    <form class="card card-body bg-light p-0">
                                        <textarea id="valueComment" class="form-control bg-light" style="resize: none;" rows="3" placeholder="답글을 입력하세요."></textarea>
                                    </form>
                                    <div class="d-flex gap-1 mt-2 justify-content-end">
                                        <button id="btnSubmitComment" class="btn btn-secondary align-items-center justify-content-center p-0 fw-semibold" style="width: 60px; height: 25px; font-size: 13px;" type="button" disabled>등록</button>
                                    </div>
                                </div>
                                <div class="collapse" id="showReply">
                                    <ul class="mb-0 ps-2">
                                        <li class="d-flex gap-2 mt-2">
                                            <i class="bi bi-arrow-return-right text-dark-emphasis"></i>
                                            <div class="card card-body p-2 pb-0 bg-light">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <span class="fw-semibold">홍길동</span>
                                                    <span class="text-dark-emphasis" style="font-size: 14px;">2024. 11. 11</span>
                                                </div>
                                                <div class="mb-1">
                                                    <p class="fs-6 m-1">
                                                        강의 수강 후 좋은 후기를 남겨주셔서 감사합니다! 기초부터 고급 내용까지 잘 전달된 것 같아서 저도 매우 기쁩니다. React 프로젝트에 도움이 되셨다면 정말 뿌듯하네요. 앞으로도 실무에서 유용하게 활용하시길 바랍니다!
                                                    </p>  
                                                </div>
                                            </div>
                                        </li>
                                        <li class="d-flex gap-2 mt-2">
                                            <i class="bi bi-arrow-return-right text-dark-emphasis"></i>
                                            <div class="card card-body p-2 pb-0 bg-light">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <span class="fw-semibold">홍길동</span>
                                                    <span class="text-dark-emphasis" style="font-size: 14px;">2024. 11. 11</span>
                                                </div>
                                                <div class="mb-1">
                                                    <p class="fs-6 m-1">
                                                        강의 수강 후 좋은 후기를 남겨주셔서 감사합니다! 기초부터 고급 내용까지 잘 전달된 것 같아서 저도 매우 기쁩니다. React 프로젝트에 도움이 되셨다면 정말 뿌듯하네요. 앞으로도 실무에서 유용하게 활용하시길 바랍니다!
                                                    </p>  
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </aside>
        </section>

        <div class="modal fade" id="addToCartModalForm" tabindex="-1" aria-labelledby="addToCartModalFormLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addToCartModalFormLabel">장바구니 담기</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        해당 강의가 장바구니에 추가되었습니다.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="btnAddToCartConfirm">확인</button>
                    </div>
                </div>
            </div>
          </div>
    </main>

    <footer class="bg-light text-center py-3">
        <p>team project</p>
    </footer>

    <script src="../js/detail.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>