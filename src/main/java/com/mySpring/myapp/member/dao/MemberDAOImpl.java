package com.mySpring.myapp.member.dao;

import java.util.Collections;
import java.util.List;

import com.mySpring.myapp.member.vo.LectureVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.mySpring.myapp.member.vo.MemberVO;


@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllMemberList() throws DataAccessException {
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mappers.member.selectAllMemberList");
		return membersList;
	}

	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.insert("mappers.member.insertMember", memberVO);
		return result;
	}

	@Override
	public int deleteMember(String id) throws DataAccessException {
		int result = sqlSession.delete("mappers.member.deleteMember", id);
		return result;
	}
	
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException{
		  MemberVO vo = sqlSession.selectOne("mappers.member.loginById",memberVO);
		return vo;
	}

	@Override
	public List selectAllLectureList() throws DataAccessException {
		List<MemberVO> lecturesList = null;
		lecturesList = sqlSession.selectList("mappers.member.selectAllLectureList");
		return lecturesList;
	}

	@Override
	public LectureVO selectLectureDetail(LectureVO lectureVO) {
		return sqlSession.selectOne("mappers.member.selectLectureDetail", lectureVO);
	}

}
