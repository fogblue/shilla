package iot5.project.shilla.service;

import iot5.project.shilla.model.Member;

public interface MemberService {
	/**
	 * 회원등록
	 * @param member
	 * @throws Exception
	 */
	public void insertMember(Member member) throws Exception;
	/**
	 * 회원수정
	 * @param member
	 * @throws Exception
	 */
	public void updateMember(Member member) throws Exception;
	/**
	 * 이메일, 전화번호 변경
	 * @param member
	 * @throws Exception
	 */
	public void updateMemberET(Member member) throws Exception;
	/**
	 * 비밀번호 변경
	 * @param member
	 * @throws Exception
	 */
	public void updateMemberPasswordById(Member member) throws Exception;
	/**
	 * 비밀번호 재발급
	 * @param member
	 * @throws Exception
	 */
	public void updateMemberPasswordByEmail(Member member) throws Exception;
	/**
	 * 회원탈퇴
	 * @param member
	 * @throws Exception
	 */
	public void deleteMember(Member member) throws Exception;
	/**
	 * 회원정보 조회
	 * @param member
	 * @return
	 * @throws Exception
	 */
	public Member selectMember (Member member) throws Exception;
	/**
	 * 로그인정보 조회
	 * @param member
	 * @return
	 * @throws Exception
	 */
	public Member selectLoginInfo(Member member) throws Exception;
	/**
	 * 회원정보 조회
	 * @param member
	 * @return
	 * @throws Exception
	 */
	public Member selectFindId(Member member) throws Exception;
	/**
	 * 아이디 중복검사
	 * @param member
	 * @throws Exception
	 */
	public void selectUserIdCount(Member member) throws Exception;
	/**
	 * 이메일 중복검사
	 * @param member
	 * @throws Exception
	 */
	public void selectEmailCount(Member member) throws Exception;
	/**
	 * 휴대전화번호 중복검사
	 * @param member
	 * @throws Exception
	 */
	public void selectTelCount(Member member) throws Exception;
	/**
	 * 비밀번호 일치검사
	 * @param member
	 * @throws Exception
	 */
	public void selectMemberPasswordCount(Member member) throws Exception;
	/**
	 * 이메일 중복검사 : 버튼
	 * @param member
	 * @return
	 * @throws Exception
	 */
	public int selectEmailCheck(Member member) throws Exception;

}
