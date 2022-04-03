package kr.narp.myapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.narp.myapp.model.MemberDAO;
import kr.narp.myapp.model.MemberVO;
@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("/memberList.do")
	public String memberList(Model model) { // HttpServletRequest == Model
		List<MemberVO> list = dao.memberList();
		// 객체바인딩
		model.addAttribute("list", list);
		return "memberList";
	}
	
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO mVo) {
		// 인코딩
		int cnt = dao.memberInsert(mVo);
		
		return "redirect:/memberList.do";
	}
	
	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO mVo) {
		int cnt = dao.memberUpdate(mVo);
		return "redirect:/memberList.do";
	}
	
	@RequestMapping("/memberContent.do")
	public String memberContent(int num, Model model) {
		MemberVO mVo = dao.memberContent(num);
		// 객체바인딩
		model.addAttribute("mVo", mVo);
		return "memberContent";
	}
	
	@RequestMapping("/memberRegister.do")
	public String memberRegister() {
		
		return "memberRegister";
	}
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(@RequestParam("num") int num) {
		int cnt = dao.memberDelete(num);
		
		return "redirect:/memberList.do";
	}

}
