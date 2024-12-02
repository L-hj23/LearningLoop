package com.mySpring.myapp.member.dao;

import java.util.List;

import com.mySpring.myapp.member.vo.LectureVO;
import org.springframework.dao.DataAccessException;

import com.mySpring.myapp.member.vo.MemberVO;


public interface MemberDAO {
	public List selectAllMemberList() throws DataAccessException;
	public int insertMember(MemberVO memberVO) throws DataAccessException ;
	public int deleteMember(String id) throws DataAccessException;
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;

	public List selectAllLectureList() throws DataAccessException;

	public LectureVO selectLectureDetail(LectureVO lectureVO);
}
