package com.mySpring.myapp.controller;

import com.mySpring.myapp.service.ReviewService;
import com.mySpring.myapp.vo.ReviewVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/review")
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    // 강의 상세 페이지에서 리뷰 폼을 보여줌
    @GetMapping("/form/{lectureId}")
    public String showReviewForm(@PathVariable int lectureId, Model model) {
        model.addAttribute("lectureId", lectureId);
        model.addAttribute("review", new ReviewVO());  // 빈 ReviewVO 객체 생성
        model.addAttribute("reviews", reviewService.getReviewsByLectureId(lectureId));  // 해당 강의의 리뷰 목록
        return "lectureDetail";  // 강의 상세 페이지로 포워드
    }

    // 리뷰 작성 처리
    @PostMapping("/submit")
    public String submitReview(@ModelAttribute ReviewVO review, @RequestParam int lectureId) {
        review.setLectureId(lectureId);  // 강의 ID 설정
        reviewService.addReview(review);
        return "redirect:/lecture/detail/" + lectureId;  // 작성 후 강의 상세 페이지로 리다이렉트
    }
}
