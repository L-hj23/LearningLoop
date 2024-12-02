<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><tiles:getAsString name="title" /></title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
    <header>
        <tiles:insertAttribute name="header" />
    </header>
    <main>
        <tiles:insertAttribute name="content" />
    </main>
    <footer>
        <p>© Team Project</p>
    </footer>
</body>
</html>
