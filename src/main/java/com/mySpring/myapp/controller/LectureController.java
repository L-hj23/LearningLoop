package com.mySpring.myapp.controller;

import com.mySpring.myapp.service.LectureService;
import com.mySpring.myapp.service.ReviewService;
import com.mySpring.myapp.vo.LectureVO;
import com.mySpring.myapp.vo.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class LectureController {

    private final LectureService lectureService;
    private final ReviewService reviewService;

    @Autowired
    public LectureController(LectureService lectureService, ReviewService reviewService) {
        this.lectureService = lectureService;
        this.reviewService = reviewService;
    }

    // 강의 상세 페이지 및 리뷰 목록을 함께 처리
    @GetMapping("/lecture/detail/{id}")
    public String lectureDetail(@PathVariable("id") int id, Model model) {
        try {
            // 강의 정보 가져오기
            LectureVO lecture = lectureService.getLectureById(id);
            if (lecture == null) {
                model.addAttribute("error", "강의 정보가 존재하지 않습니다.");
                return "errorPage"; // 강의 정보가 없을 때 오류 페이지
            }

            model.addAttribute("lecture", lecture);

            // 해당 강의의 리뷰 목록 가져오기
            List<ReviewVO> reviews = reviewService.getReviewsByLectureId(id);
            if (reviews == null || reviews.isEmpty()) {
                model.addAttribute("error", "이 강의에 대한 리뷰가 없습니다.");
                return "errorPage"; // 리뷰가 없을 때 오류 페이지
            }

            model.addAttribute("reviews", reviews);

            return "lectureDetail"; // 강의 상세 페이지와 리뷰 목록을 하나의 페이지에서 보여줌
        } catch (Exception e) {
            // 예외 로그 출력
            e.printStackTrace();
            model.addAttribute("error", "강의 정보를 가져오는 중 오류가 발생했습니다.");
            return "errorPage"; // 오류 페이지
        }
    }
}
