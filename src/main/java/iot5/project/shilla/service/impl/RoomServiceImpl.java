package iot5.project.shilla.service.impl;

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
		// TODO Auto-generated method stub
		return null;
	}

}