package iot5.project.shilla.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import iot5.project.shilla.model.ResvRoom;
import iot5.project.shilla.service.ReservService;

@Service
public class ReservServiceImpl implements ReservService {

	private static final Logger logger = LoggerFactory.getLogger(ReservServiceImpl.class);
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertReserv(ResvRoom reserv) throws Exception {
		try {
			int result = sqlSession.insert("ReservMapper.insertReserv", reserv);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("등록된 예약이 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("예약 등록에 실패했습니다.");
		}

	}
		

	@Override
	public void deleteReserv(ResvRoom reserv) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateReserv(ResvRoom reserv) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ResvRoom selectReserv(ResvRoom reserv) throws Exception {
		ResvRoom result = null;

		try {
			result = sqlSession.selectOne("ReservMapper.selectReserv", reserv);
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
	public ResvRoom selectReservById(ResvRoom reserv) throws Exception {
		ResvRoom result = null;

		try {
			result = sqlSession.selectOne("ReservMapper.selectReservById", reserv);
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
