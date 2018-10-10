package iot5.project.shilla.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.QnA;
import iot5.project.shilla.service.QnAService;

@Service
public class QnAServiceImpl implements QnAService {
	private static final Logger logger = LoggerFactory.getLogger(QnAServiceImpl.class);

	@Autowired
	SqlSession sqlSession;
	@Autowired
	WebHelper web;
	@Autowired
	UploadHelper upload;
	
	@Override
	public void selectUserIdCount(QnA qna) throws Exception {
		try {
			int result = sqlSession.insert("QnAMapper.writeQnA", qna);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("저장된 게시물이 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("게시물 정보 등록에 실패했습니다.");
		}
	}

	@Override
	public void writeQnA(QnA qna) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteQnA(QnA qna) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateQnA(QnA qna) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public QnA selectQnA(QnA qna) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
