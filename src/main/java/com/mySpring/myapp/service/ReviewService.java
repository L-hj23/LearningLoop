package com.mySpring.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mySpring.myapp.dao.ReviewDAO;
import com.mySpring.myapp.vo.ReviewVO;

import java.util.List;

@Service
public class ReviewService {

    private final ReviewDAO reviewDAO;

    @Autowired
    public ReviewService(ReviewDAO reviewDAO) {
        this.reviewDAO = reviewDAO;
    }

    // 전체 리뷰 목록 조회
    @Transactional(readOnly = true)
    public List<ReviewVO> getReviews() {
        return reviewDAO.getReviews();  // DAO에서 정의된 getReviews 호출
    }

    // 특정 강의의 리뷰 목록 조회
    @Transactional(readOnly = true)
    public List<ReviewVO> getReviewsByLectureId(int lectureId) {
        return reviewDAO.getReviewsByLectureId(lectureId);  // 강의별 리뷰 조회
    }

    // 리뷰 추가
    @Transactional
    public void addReview(ReviewVO review) {
        reviewDAO.addReview(review);  // 리뷰 추가
    }
}
