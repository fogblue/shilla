package iot5.project.shilla.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import iot5.project.shilla.model.Room;
import iot5.project.shilla.service.RoomService;

@Service
public class RoomServiceImpl implements RoomService {

	private static final Logger logger = LoggerFactory.getLogger(RoomServiceImpl.class);
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertRoom(Room room) throws Exception {
		try {
			int result = sqlSession.insert("RoomMapper.insertRoom", room);
			if(result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("저장된 객실정보가 없습니다.");
		}catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("객실 정보 등록에 실패했습니다.");
		} 
	}

	@Override
	public void deleteRoom(Room room) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateRoom(Room room) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Room selectRoom(Room room) throws Exception {
		Room result = null;
		try {
			result = sqlSession.selectOne("RoomMapper.selectRoomItem", room);
			if(result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("조회된 정보가 없습니다.");
		}catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("객실 정보 조회에 실패했습니다.");
		} 
		
		return result;
	}

	@Override
	public int getRoomCount(Room room) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("RoomMapper.selectRoomCount", room);
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public List<Room> getRoomList(Room room) throws Exception {
		List<Room> result = null;

		try {
			result = sqlSession.selectList("RoomMapper.selectRoomList", room);
			if (result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

}
