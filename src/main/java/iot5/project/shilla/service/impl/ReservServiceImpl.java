package iot5.project.shilla.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import iot5.project.shilla.model.Reservation;
import iot5.project.shilla.model.RoomForReserv;
import iot5.project.shilla.service.ReservService;

@Service
public class ReservServiceImpl implements ReservService {

	private static final Logger logger = LoggerFactory.getLogger(ReservServiceImpl.class);
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertReservRoom(RoomForReserv reserv) throws Exception {
		try {
			int result = sqlSession.insert("ReservationMapper.insertReservRoom", reserv);
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
	public void insertReservGuest(RoomForReserv reserv) throws Exception {
		try {
			int result = sqlSession.insert("ReservationMapper.insertReservGuest", reserv);
			if (result ==0) {
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
	public void deleteReserv(Reservation reserv) throws Exception {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void updateReserv(Reservation reserv) throws Exception {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Reservation selectReserv(RoomForReserv reserv) throws Exception {
		Reservation result = null;

		try {
			result = sqlSession.selectOne("ReservationMapper.selectReserv", reserv);
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
	public List<Reservation> selectReservList(Reservation reserv) throws Exception {
		List<Reservation> result = null;

		try {
			result = sqlSession.selectList("ReservationMapper.selectReservList", reserv);
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
	public Reservation selectReservRById(Reservation reserv) throws Exception {
		Reservation result = null;

		try {
			result = sqlSession.selectOne("ReservationMapper.selectReservRById", reserv);
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
	public Reservation selectReservGById(Reservation reserv) throws Exception {
		Reservation result = null;

		try {
			result = sqlSession.selectOne("ReservationMapper.selectReservGById", reserv);
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
	public Reservation selectroomInfo(Reservation reserv) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Reservation selectguestInfo(Reservation reserv) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int selectReservationCount(Reservation reserv) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("ReservationMapper.selectReservationCount", reserv);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("예약 갯수 조회에 실패했습니다.");
		}
		return result;
	}


	@Override
	public int selectReservationPplCount(Reservation reserv) throws Exception {
		// TODO Auto-generated method stub
		int result = 0;
		
		try {
			result = sqlSession.selectOne("ReservationMapper.selectReservationPplCount", reserv);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("예약 갯수 조회에 실패했습니다.");
		}
		return result;
	}


	
	
}
