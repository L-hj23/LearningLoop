package com.mySpring.myapp.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mySpring.myapp.vo.LectureVO;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.BadSqlGrammarException;
@Repository
public class LectureDAOImpl implements LectureDAO {

    @Autowired
    private SqlSession sqlSession;

    private static final String NAMESPACE = "LectureMapper";

    @Override
    public List<LectureVO> getAllLectures() {
        return sqlSession.selectList(NAMESPACE + ".getAllLectures");
    }

    @Override
    public LectureVO getLectureById(int id) {
        return sqlSession.selectOne(NAMESPACE + ".getLectureById", id);
    }

    @Override
    public void addLecture(LectureVO lecture) {
        sqlSession.insert(NAMESPACE + ".addLecture", lecture);
    }

    @Override
    public void updateLecture(LectureVO lecture) {
        sqlSession.update(NAMESPACE + ".updateLecture", lecture);
    }

    @Override
    public void deleteLecture(int id) {
        sqlSession.delete(NAMESPACE + ".deleteLecture", id);
    }
}
