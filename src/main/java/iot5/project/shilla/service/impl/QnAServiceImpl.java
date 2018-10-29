package iot5.project.shilla.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import iot5.project.shilla.model.QnA;
import iot5.project.shilla.service.QnAService;

@Service
public class QnAServiceImpl implements QnAService {
	private static final Logger logger = LoggerFactory.getLogger(QnAServiceImpl.class);

	@Autowired
	SqlSession sqlSession;

	@Override
	public void insertQnA(QnA qna) throws Exception {
		try {
			int result = sqlSession.insert("QnAMapper.insertQnA", qna);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("등록된 게시물이 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("게시물 등록에 실패했습니다.");
		}

	}

	@Override
	public void deleteQnA(QnA qna) throws Exception {
		try {
			int result = sqlSession.delete("QnAMapper.deleteQnA", qna);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("삭제된 게시물이 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("게시물 삭제에 실패했습니다.");
		}

	}

	@Override
	public void updateQnA(QnA qna) throws Exception {
		try {
			int result = sqlSession.update("QnAMapper.updateQnA", qna);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("조회된 게시물이 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("게시물 수정에 실패했습니다.");
		}
	}

	@Override
	public QnA selectQnA(QnA qna) throws Exception {
		QnA result = null;

		try {
			result = sqlSession.selectOne("QnAMapper.selectQnA", qna);
			if (result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("조회된 게시물이 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("게시물 조회에 실패했습니다.");
		}

		return result;
	}

	@Override
	public List<QnA> selectQnAList(QnA qna) throws Exception {
		List<QnA> result = null;

		try {
			result = sqlSession.selectList("QnAMapper.selectQnAList", qna);
			if (result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("조회된 글 목록이 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("글 목록 조회에 실패했습니다.");
		}

		return result;
	}
	
	@Override
	public QnA selectPrevQnA(QnA qna) throws Exception {
		QnA result = null;

		try {
			result = sqlSession.selectOne("QnAMapper.selectPrevQnA", qna);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("이전글 조회에 실패했습니다.");
		}

		return result;
	}

	@Override
	public QnA selectNextQnA(QnA qna) throws Exception {
		QnA result = null;

		try {
			result = sqlSession.selectOne("QnAMapper.selectNextQnA", qna);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("다음글 조회에 실패했습니다.");
		}

		return result;
	}

	@Override
	public void updateQnAMemberOut(QnA qna) throws Exception {

		try {
			sqlSession.update("QnAMapper.updateQnAMemberOut", qna);
		} catch (NullPointerException e) {
			throw new Exception("조회된 게시물이 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("게시물 수정에 실패했습니다.");
		}
	}
	
	public QnA selectQnAById(QnA qna) throws Exception {
		QnA result = null;

		try {
			result = sqlSession.selectOne("QnAMapper.selectQnAById", qna);
			if (result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("조회된 게시물이 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("게시물 조회에 실패했습니다.");
		}

		return result;
	}
}
