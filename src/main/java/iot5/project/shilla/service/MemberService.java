package iot5.project.shilla.service;

import iot5.project.shilla.model.Member;

public interface MemberService {
	public void selectUserIdCount(Member member) throws Exception;
	
	public void selectEmailCount(Member member) throws Exception;
	
	public int selectEmailCheck(Member member) throws Exception;
	
	public Member selectFindId(Member member) throws Exception;
	
	public void insertMember(Member member) throws Exception;
	
	public Member selectLoginInfo(Member member) throws Exception;
	
	public void updateMemberPasswordByEmail(Member member) throws Exception;
	
	public void updateMemberPasswordById(Member member) throws Exception;
	
	public void selectMemberPasswordCount(Member member) throws Exception;
	
	public void deleteMember(Member member) throws Exception;
	
	public void updateMember(Member member) throws Exception;
	
	public Member selectMember (Member member) throws Exception;
	
	public void updateMemberET(Member member) throws Exception;
}
