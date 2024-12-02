<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>강의 상세</title>
</head>
<body>
    <h1>${lecture.title}</h1>
    <p><strong>강의 설명:</strong> ${lecture.description}</p>
    <p><strong>강사:</strong> ${lecture.instructor}</p>

    <hr>

    <!-- 리뷰 목록 -->
    <h2>리뷰 목록</h2>
    <table border="1">
        <tr>
            <th>번호</th>
            <th>작성자</th>
            <th>내용</th>
            <th>작성일</th>
        </tr>
        <c:forEach var="review" items="${reviews}">
            <tr>
                <td>${review.id}</td>
                <td>${review.author}</td>
                <td>${review.content}</td>
                <td>${review.date}</td>
            </tr>
        </c:forEach>
    </table>

    <hr>

    <!-- 리뷰 작성 폼 -->
    <h2>리뷰 작성</h2>
    <form action="/review/submit" method="post">
        <input type="hidden" name="lectureId" value="${lecture.id}" />
        <label for="author">작성자:</label>
        <input type="text" id="author" name="author" required>
        <br>

        <label for="content">내용:</label>
        <textarea id="content" name="content" required></textarea>
        <br>

        <button type="submit">리뷰 작성</button>
    </form>
</body>
</html>
