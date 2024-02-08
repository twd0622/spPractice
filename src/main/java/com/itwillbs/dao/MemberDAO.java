package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Inject
	private SqlSession session;
	
	public void insertMember(Map<String, String> param) {
		session.selectOne("memberMapper.insertMember", param);
	}

	public Map<String, String> userCheck(Map<String, String> param) {
		return session.selectOne("memberMapper.userCheck", param);
	}

	public Map<String, String> getInfo(String id) {
		return session.selectOne("memberMapper.getInfo", id);
	}

	public void updateMember(Map<String, String> param) {
		session.selectOne("memberMapper.updateMember", param);
	}

	public void deleteMember(String id) {
		session.selectOne("memberMapper.deleteMember", id);
	}

	public List<Map<String, String>> getMemberInfo() {
		return session.selectList("memberMapper.getMemberInfo");
	}

}
