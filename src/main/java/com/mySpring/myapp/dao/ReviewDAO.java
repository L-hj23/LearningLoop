package com.mySpring.myapp.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mySpring.myapp.vo.ReviewVO;

import java.util.List;

@Repository
public class ReviewDAO {

    @Autowired
    private SqlSession sqlSession;

    // 전체 리뷰 목록 조회
    public List<ReviewVO> getReviews() {
        return sqlSession.selectList("ReviewMapper.getReviews");  // 전체 리뷰를 조회하는 SQL 쿼리 호출
    }

    // 특정 강의의 리뷰 목록 조회
    public List<ReviewVO> getReviewsByLectureId(int lectureId) {
        return sqlSession.selectList("ReviewMapper.getReviewsByLectureId", lectureId);  // 강의 ID에 맞는 리뷰 조회
    }

    // 리뷰 추가
    public void addReview(ReviewVO review) {
        sqlSession.insert("ReviewMapper.addReview", review);  // 리뷰 추가하는 SQL 쿼리 호출
    }
}
