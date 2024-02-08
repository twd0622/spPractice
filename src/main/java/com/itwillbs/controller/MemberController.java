package com.itwillbs.controller;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.service.MemberService;
	
@Controller
@RequestMapping("/member/*")
public class MemberController {	
	
	@Inject
	private MemberService memberService;
	
	@GetMapping("/insert")
	public String insert() {
		return "Member/1_insert";
	} // insert
	
	@PostMapping("/insertPro")
	public String insertPro(@RequestParam Map<String, String> param) {
		memberService.insertMember(param);
		return "redirect:/member/login";
	}
	
	@GetMapping("/login")
	public String login() {
		return "Member/2_login";
	}
	
	@PostMapping("/loginPro")
	public String loginPro(@RequestParam Map<String, String> param, HttpSession session) {
		Map<String, String> map = memberService.userCheck(param);
		if(map.get("res").equals("0")) {
			return "Member/4_msg";
		} else {
			session.setAttribute("id", map.get("member_id"));
			session.setAttribute("name", map.get("member_name"));
			
			return "redirect:/member/main";
		}
	}
	
	@GetMapping("/main")
	public String main() {
		
		return "Member/3_main";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/login";
	}
	
	@GetMapping("/info")
	public String info(HttpSession session, Model model) {
		model.addAllAttributes(memberService.getInfo((String)session.getAttribute("id")));
		return "Member/5_info";
	}
	
	@GetMapping("/update")
	public String update(HttpSession session, Model model) {
		model.addAllAttributes(memberService.getInfo((String)session.getAttribute("id")));
		return "Member/6_update";
	}
	
	@PostMapping("/updatePro")
	public String updatePro(@RequestParam Map<String, String> param, HttpSession session) {
		memberService.upateMember(param);
		if(param.get("res").equals("0")) {
			return "Member/4_msg";
		} else{
			session.setAttribute("name", param.get("name"));
			return "redirect:/member/info";
		}
	}
	
	@GetMapping("delete")
	public String delete(HttpSession session) {
		memberService.deleteMember((String)session.getAttribute("id"));
		session.invalidate();
		return "redirect:/member/login";
	}
	
	@GetMapping("list")
	public String list(Model model) {
		 model.addAttribute("infoList", memberService.getMemberInfo());
		
		return "Member/7_list";
	}
	
	@GetMapping("excel")
	public String excel() {
		
		return "Excel/excel";
	}
	
	
	
	
	
	
}
