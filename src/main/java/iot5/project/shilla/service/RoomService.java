package iot5.project.shilla.service;

import java.util.List;

import iot5.project.shilla.model.Room;

public interface RoomService {
	/**
	 * 객실 정보 추가
	 * @param room
	 * @throws Exception
	 */
	public void insertRoom(Room room) throws Exception;
	
	/**
	 * 객실 정보 삭제
	 * @param room
	 * @throws Exception
	 */
	public void deleteRoom(Room room) throws Exception;
	
	/**
	 * 객실 정보 수정
	 * @param room
	 * @throws Exception
	 */
	public void updateRoom(Room room) throws Exception;
	
	/**
	 * 객실 상세 정보 조회
	 * @param room
	 * @return
	 * @throws Exception
	 */
	public Room selectRoom(Room room) throws Exception;
	
	/**
	 * 객실 갯수 확인
	 * @param room
	 * @return
	 * @throws Exception
	 */
	public int getRoomCount(Room room) throws Exception;
	
	/**
	 * 다중행 조회를 위한 서비스
	 * @param room
	 * @return
	 * @throws Exception
	 */
	public List<Room> getRoomList(Room room) throws Exception;
}
