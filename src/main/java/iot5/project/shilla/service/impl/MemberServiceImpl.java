package iot5.project.shilla.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import iot5.project.shilla.model.Member;
import iot5.project.shilla.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	@Autowired
	SqlSession sqlSession;

	@Override
	public void selectUserIdCount(Member member) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void selectEmailCount(Member member) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Member selectLoginInfo(Member member) throws Exception {
		Member result = null;
		try {
			result = sqlSession.selectOne("MemberMapper.selectLoginInfo", member);
			if(result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("아이디나 비밀번호가 잘못되었습니다.");
		}catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("로그인에 실패했습니다.");
		} 
		
		return result;
	}

	@Override
	public void updateMemberPasswordByEmail(Member member) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void selectMemberPasswordCount(Member member) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Member selectMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
