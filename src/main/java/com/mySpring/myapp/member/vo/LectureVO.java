package com.mySpring.myapp.member.vo;

import org.springframework.stereotype.Component;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;
import java.time.LocalDateTime;

@Component("lectureVO")
public class LectureVO {
	private int lectureKey;
	private int lectureWriterKey;
	private int lectureStudentKey;
	private String lectureWriterName;
	private int lecturePrice;
	private int lectureRating;

	private String lectureCategory;
	private String lectureTitle;
	private String lectureSubTitle;
	private String lectureContent;
	private String lectureImageUrl;

	private LocalDateTime lectureRegDt;

	public LectureVO() {
	}

	public LectureVO(int lectureKey, int lectureWriterKey, int lecturePrice, int lectureRating, String lectureCategory, String lectureTitle, String lectureSubTitle, String lectureContent, String lectureImageUrl, LocalDateTime lectureRegDt) {
		this.lectureKey = lectureKey;
		this.lectureWriterKey = lectureWriterKey;
		this.lecturePrice = lecturePrice;
		this.lectureRating = lectureRating;
		this.lectureCategory = lectureCategory;
		this.lectureTitle = lectureTitle;
		this.lectureSubTitle = lectureSubTitle;
		this.lectureContent = lectureContent;
		this.lectureImageUrl = lectureImageUrl;
		this.lectureRegDt = lectureRegDt;
	}

	public int getLectureKey() {
		return lectureKey;
	}

	public void setLectureKey(int lectureKey) {
		this.lectureKey = lectureKey;
	}

	public int getLectureWriterKey() {
		return lectureWriterKey;
	}

	public void setLectureWriterKey(int lectureWriterKey) {
		this.lectureWriterKey = lectureWriterKey;
	}

	public int getLecturePrice() {
		return lecturePrice;
	}

	public void setLecturePrice(int lecturePrice) {
		this.lecturePrice = lecturePrice;
	}

	public int getLectureRating() {
		return lectureRating;
	}

	public void setLectureRating(int lectureRating) {
		this.lectureRating = lectureRating;
	}

	public String getLectureCategory() {
		return lectureCategory;
	}

	public void setLectureCategory(String lectureCategory) {
		this.lectureCategory = lectureCategory;
	}

	public String getLectureTitle() {
		return lectureTitle;
	}

	public void setLectureTitle(String lectureTitle) {
		this.lectureTitle = lectureTitle;
	}

	public String getLectureSubTitle() {
		return lectureSubTitle;
	}

	public void setLectureSubTitle(String lectureSubTitle) {
		this.lectureSubTitle = lectureSubTitle;
	}

	public String getLectureContent() {
		return lectureContent;
	}

	public void setLectureContent(String lectureContent) {
		this.lectureContent = lectureContent;
	}

	public String getLectureImageUrl() {
		return lectureImageUrl;
	}

	public void setLectureImageUrl(String lectureImageUrl) {
		this.lectureImageUrl = lectureImageUrl;
	}

	public LocalDateTime getLectureRegDt() {
		return lectureRegDt;
	}

	public void setLectureRegDt(LocalDateTime lectureRegDt) {
		this.lectureRegDt = lectureRegDt;
	}

	public String getLectureWriterName() {
		return lectureWriterName;
	}

	public void setLectureWriterName(String lectureWriterName) {
		this.lectureWriterName = lectureWriterName;
	}

	public int getLectureStudentKey() {
		return lectureStudentKey;
	}

	public void setLectureStudentKey(int lectureStudentKey) {
		this.lectureStudentKey = lectureStudentKey;
	}
}
