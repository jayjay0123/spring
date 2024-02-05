package com.my.zegna.controller;


import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.my.zegna.MemberVO;
import com.my.zegna.persistence.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	MemberService service;
	
	@Autowired
	BCryptPasswordEncoder passEncoder;
	
	@Bean
	BCryptPasswordEncoder passEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	//ȸ������ GET
	@GetMapping("/join")
	public void join() throws Exception {
		logger.info("get join");
	}
	
	//ȸ������ POST
	@PostMapping("/join")
	public String Join(MemberVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("post join");
		
		String inputPass = vo.getUserPass();
		String pass = passEncoder.encode(inputPass);
		vo.setUserPass(pass);
		
		String inputPassRe = vo.getUserPassRe();
		String passRe = passEncoder.encode(inputPassRe);
		vo.setUserPassRe(passRe);
		
		service.join(vo);
		
		rttr.addFlashAttribute("result", vo.getUserId());
		
		return "redirect:/member/login";
	}	
	
	//ID�ߺ� üũ
	@PostMapping("/IdCheck")
	@ResponseBody
	public int idCheck(@RequestParam("userId") String id) throws Exception{
		logger.info("idCheck...");
		
		int cnt = service.selectId(id);
		return cnt;
		
	}
	
	
	//�α��� GET
	@GetMapping("/login")
	public void login() throws Exception {
		logger.info("get login");
	}
	//�α��� POST
	@PostMapping("/login")
	public String Login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");
		
		MemberVO login = service.login(vo);
		HttpSession session = req.getSession();
		
		if(login != null) {
			boolean passMatch = passEncoder.matches(vo.getUserPass(), login.getUserPass());
			if(passMatch) {
				session.setAttribute("member", login);
				rttr.addFlashAttribute("msg", "�α��� ����");
				return "redirect:/";
			}else {
				session.setAttribute("member", null);
				rttr.addFlashAttribute("msg", "��й�ȣ�� Ʋ���ϴ�.");
				return "redirect:/member/login";
			}
		}else {
		session.setAttribute("member", null);
		rttr.addFlashAttribute("msg", "ȸ�������� �����ϴ�.");
		return "redirect:/member/login";
		}
	}
		
		
	//�α׾ƿ�
	@GetMapping("/logout")
	public String logout(HttpSession session) throws Exception {
		logger.info("get logout");
		service.logout(session);
		return "redirect:/";
	}
	
	//����������
	@GetMapping("/mypage")
	public ModelAndView mypage(@RequestParam Map<String, Object> map) throws Exception {
		logger.info("get mypage");
		Map<String, Object> mypageMap = service.mypage(map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", mypageMap);
		
		Object userId = map.get("userId");
		mav.addObject("userId", userId);
		mav.setViewName("/member/mypage");
		return mav;
	}
	
	//���������� ����
	@PostMapping("/mypage")
	public ModelAndView update(@RequestParam Map<String, Object> map , RedirectAttributes rttr) throws Exception {
		logger.info("post mypage");
		
		ModelAndView mav = new ModelAndView();
		
		boolean isUpdateSuccess = service.edit(map);
		if(isUpdateSuccess) {
			Object userId = map.get("userId");
			mav.setViewName("redirect:/member/mypage?userId="+userId);
			rttr.addFlashAttribute("msg", "�����Ǿ����ϴ�.");			
		}else {
			mav = this.update(map , rttr);
		}		
		return mav;
	}
	
	
}
