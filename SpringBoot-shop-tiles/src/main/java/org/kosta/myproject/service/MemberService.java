package org.kosta.myproject.service;

import java.util.List;

import org.kosta.myproject.model.Authority;
import org.kosta.myproject.model.MemberVO;

public interface MemberService {
	MemberVO findMemberById(String id);

	List<String> getAddressList();

	List<MemberVO> findMemberListByAddress(String address);

	int getMemberCount();

	void updateMember(MemberVO vo);

	void registerMember(MemberVO vo);

	String idcheck(String id);
	
	List<Authority> selectAuthorityByUsername(String username);
}
