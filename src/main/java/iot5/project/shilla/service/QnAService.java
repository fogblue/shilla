package iot5.project.shilla.service;

import iot5.project.shilla.model.QnA;

public interface QnAService {
	/**
	 * 게시물 갯수
	 * @param qna
	 * @throws Exception
	 */
	public void selectUserIdCount(QnA qna) throws Exception;

	/**
	 * 게시물 작성
	 * @param qna
	 * @throws Exception
	 */
	public void writeQnA(QnA qna) throws Exception;

	/**
	 * 게시물 삭제
	 * @param qna
	 * @throws Exception
	 */
	public void deleteQnA(QnA qna) throws Exception;

	/**
	 * 게시물 수정
	 * @param qna
	 * @throws Exception
	 */
	public void updateQnA(QnA qna) throws Exception;

	/**
	 * 게시물 보기
	 * @param qna
	 * @return
	 * @throws Exception
	 */
	public QnA selectQnA(QnA qna) throws Exception;
}
