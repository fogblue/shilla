package iot5.project.shilla.service;

import iot5.project.shilla.model.QnA;

public interface QnAService {
	
	/**
	 * 게시물 작성
	 * @param qna
	 * @throws Exception
	 */
	public void insertQnA(QnA qna) throws Exception;

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
	
	/**
	 * 현재글을 기준으로 이전글을 읽어들인다.
	 * @param qna - 현재글에 대한 게시물 번호가 저장된 Beans
	 * @return QnA - 읽어들인 게시물 내용 (없을 경우 null)
	 * @throws Exception
	 */
	public QnA selectPrevQnA(QnA qna) throws Exception;
	
	/**
	 * 현재글을 기준으로 다음글을 읽어들인다.
	 * @param qna - 현재글에 대한 게시물 번호가 저장된 Beans
	 * @return QnA - 읽어들인 게시물 내용 (없을 경우 null)
	 * @throws Exception
	 */
	public QnA selectNextQnA(QnA qna) throws Exception;
	
	/**
	 * 멤버 탈퇴를 위한 게시글 삭제
	 * @param qna
	 * @throws Exception
	 */
	public void updateQnAMemberOut(QnA qna) throws Exception;
}
