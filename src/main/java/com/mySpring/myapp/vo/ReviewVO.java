package com.mySpring.myapp.vo;

import java.util.Date;

public class ReviewVO {
    private int id;
    private int lectureId;  // 강의 ID 추가
    private String author;
    private String content;
    private Date date;  // Date 타입으로 변경

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLectureId() {
        return lectureId;  // 강의 ID getter
    }

    public void setLectureId(int lectureId) {
        this.lectureId = lectureId;  // 강의 ID setter
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
