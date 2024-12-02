package com.mySpring.myapp.dao;

import java.util.List;
import com.mySpring.myapp.vo.LectureVO;

public interface LectureDAO {
    List<LectureVO> getAllLectures(); // 모든 강의 조회
    LectureVO getLectureById(int id); // 특정 강의 조회
    void addLecture(LectureVO lecture); // 강의 추가
    void updateLecture(LectureVO lecture); // 강의 수정
    void deleteLecture(int id); // 강의 삭제
}
