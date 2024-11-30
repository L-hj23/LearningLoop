package com.mySpring.myapp.service;

import com.mySpring.myapp.dao.LectureDAO;
import com.mySpring.myapp.vo.LectureVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class LectureService {

    private final LectureDAO lectureDAO;

    @Autowired
    public LectureService(LectureDAO lectureDAO) {
        this.lectureDAO = lectureDAO;
    }

    /**
     * 모든 강의 목록 조회
     */
    @Transactional(readOnly = true)
    public List<LectureVO> getAllLectures() {
        try {
            return lectureDAO.getAllLectures();
        } catch (Exception e) {
            throw new RuntimeException("Error fetching all lectures", e);
        }
    }

    /**
     * 특정 ID를 가진 강의 조회
     */
    @Transactional(readOnly = true)
    public LectureVO getLectureById(int id) {
        try {
            LectureVO lecture = lectureDAO.getLectureById(id);
            if (lecture == null) {
                throw new RuntimeException("Lecture not found with ID: " + id);
            }
            return lecture;
        } catch (Exception e) {
            throw new RuntimeException("Error fetching lecture with ID: " + id, e);
        }
    }

    /**
     * 새로운 강의 추가
     */
    @Transactional
    public void addLecture(LectureVO lecture) {
        try {
            lectureDAO.addLecture(lecture);
        } catch (Exception e) {
            throw new RuntimeException("Error adding lecture", e);
        }
    }

    /**
     * 강의 정보 수정
     */
    @Transactional
    public void updateLecture(LectureVO lecture) {
        try {
            LectureVO existingLecture = lectureDAO.getLectureById(lecture.getId());
            if (existingLecture == null) {
                throw new RuntimeException("Cannot update non-existing lecture with ID: " + lecture.getId());
            }
            lectureDAO.updateLecture(lecture);
        } catch (Exception e) {
            throw new RuntimeException("Error updating lecture", e);
        }
    }

    /**
     * 강의 삭제
     */
    @Transactional
    public void deleteLecture(int id) {
        try {
            LectureVO existingLecture = lectureDAO.getLectureById(id);
            if (existingLecture == null) {
                throw new RuntimeException("Cannot delete non-existing lecture with ID: " + id);
            }
            lectureDAO.deleteLecture(id);
        } catch (Exception e) {
            throw new RuntimeException("Error deleting lecture with ID: " + id, e);
        }
    }
}
