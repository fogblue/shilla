package iot5.project.shilla.service;

import java.util.List;

import iot5.project.shilla.model.RoomForReserv;

public interface ReservService {

	/**
	 * 예약 하기 - room
	 * @param reserv - 예약할 객실 정보
	 * @throws Exception
	 */
	public void insertReservRoom(RoomForReserv reserv) throws Exception;

	/**
	 * 예약 하기 - guest
	 * @param reserv - 예약할 고객 정보
	 * @throws Exception
	 */
	public void insertReservGuest(RoomForReserv reserv) throws Exception;
	public void insertReservation(RoomForReserv reserv) throws Exception;
	/**
	 * 예약 취소
	 * @param reserv
	 * @throws Exception
	 */
	public void deleteReserv(RoomForReserv reserv) throws Exception;

	/**
	 * 예약 수정
	 * @param reserv
	 * @throws Exception
	 */
	public void updateReserv(RoomForReserv reserv) throws Exception;

	/**
	 * 예약 보기
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public RoomForReserv selectReserv(RoomForReserv reserv) throws Exception;
	
	/**
	 * 예약 리스트
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public List<RoomForReserv> selectReservList(RoomForReserv reserv) throws Exception;
	
	/**
	 * 예약 리스트
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public List<RoomForReserv> selectReservListByDate(RoomForReserv reserv) throws Exception;
	
	/**
	 * 
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public RoomForReserv selectReservById(RoomForReserv reserv) throws Exception;
	/**
	 * 
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public RoomForReserv selectroomInfo(RoomForReserv reserv) throws Exception;
	/**
	 * 
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public RoomForReserv selectguestInfo(RoomForReserv reserv) throws Exception;
	/**
	 * 예약 갯수 조회
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public int selectReservationCount(RoomForReserv reserv) throws Exception;
	
	/**
	 * 예약 갯수 조회
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public int selectReservationCountByDate(RoomForReserv reserv) throws Exception;
	
	/**
	 * 예약 정보 확인
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public RoomForReserv selectReservInfo(RoomForReserv reserv) throws Exception;
	
}
