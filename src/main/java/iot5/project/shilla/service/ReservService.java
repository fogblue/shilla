package iot5.project.shilla.service;

import iot5.project.shilla.model.ResvRoom;

public interface ReservService {

	/**
	 * 예약 하기
	 * @param reserv
	 * @throws Exception
	 */
	public void insertReserv(ResvRoom reserv) throws Exception;

	/**
	 * 예약 취소
	 * @param reserv
	 * @throws Exception
	 */
	public void deleteReserv(ResvRoom reserv) throws Exception;

	/**
	 * 예약 수정
	 * @param reserv
	 * @throws Exception
	 */
	public void updateReserv(ResvRoom reserv) throws Exception;

	/**
	 * 예약 보기
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public ResvRoom selectReserv(ResvRoom reserv) throws Exception;
	
	/**
	 * 
	 * @param reserv
	 * @return
	 * @throws Exception
	 */
	public ResvRoom selectReservById(ResvRoom reserv) throws Exception;
}
