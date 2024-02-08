package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;

@Service
public class MemberService {
	
	@Inject
	private MemberDAO memberDAO;
	
	public void insertMember(Map<String, String> param) {
		memberDAO.insertMember(param);
	}

	public Map<String, String> userCheck(Map<String, String> param) {
		return memberDAO.userCheck(param);
		
	}

	public Map<String, String> getInfo(String id) {
		return memberDAO.getInfo(id);
	}

	public void upateMember(Map<String, String> param) {
		memberDAO.updateMember(param);
	}

	public void deleteMember(String id) {
		memberDAO.deleteMember(id);
	}

	public List<Map<String, String>> getMemberInfo() {
		return memberDAO.getMemberInfo();
	}

}
