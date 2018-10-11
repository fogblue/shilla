package iot5.project.shilla.service;

import iot5.project.shilla.model.Reservation;

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
}
