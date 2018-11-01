package iot5.project.shilla.service;

import java.util.List;

import iot5.project.shilla.model.Reservation;
import iot5.project.shilla.model.ResvGuest;
import iot5.project.shilla.model.ResvRoom;

public interface ReservService {

	/**
	 * 예약 하기
	 * @param reserv
	 * @throws Exception
	 */
	public void insertReserv(Reservation reserv) throws Exception;

	/**
	 * 예약 취소
	 * @param reserv
	 * @throws Exception
	 */
	public void deleteReserv(Reservation reserv) throws Exception;

	/**
	 * 예약 수정
	 * @param reserv
	 * @throws Exception
	 */
	public void updateReserv(Reservation reserv) throws Exception;

	/**
	 * 예약 보기
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public Reservation selectReserv(Reservation reserv) throws Exception;
	
	/**
	 * 예약 리스트
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public List<ResvRoom> selectReservList(ResvRoom reserv) throws Exception;
	
	/**
	 * 
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public ResvRoom selectReservRById(ResvRoom reserv) throws Exception;
	/**
	 * 
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public ResvGuest selectReservGById(ResvGuest reserv) throws Exception;
	/**
	 * 
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public Reservation selectroomInfo(Reservation reserv) throws Exception;
	/**
	 * 
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public Reservation selectguestInfo(Reservation reserv) throws Exception;
	/**
	 * 예약 갯수 조회
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public int selectReservationCount(ResvRoom reserv) throws Exception;
	
	
	public int selectReservationPplCount(ResvRoom reserv) throws Exception;
}
