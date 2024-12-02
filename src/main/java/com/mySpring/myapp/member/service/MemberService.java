package com.mySpring.myapp.member.service;

import java.util.List;

import com.mySpring.myapp.member.vo.LectureVO;
import org.springframework.dao.DataAccessException;

import com.mySpring.myapp.member.vo.MemberVO;

public interface MemberService {
	 public List listMembers() throws DataAccessException;
	 public int addMember(MemberVO memberVO) throws DataAccessException;
	 public int removeMember(String id) throws DataAccessException;
	 public MemberVO login(MemberVO memberVO) throws Exception;

	List listLectures() throws DataAccessException;

	LectureVO lectureDetail(LectureVO lectureVO);
}
