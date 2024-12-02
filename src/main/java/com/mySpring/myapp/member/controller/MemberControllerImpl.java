package com.mySpring.myapp.member.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mySpring.myapp.member.vo.LectureVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mySpring.myapp.member.service.MemberService;
import com.mySpring.myapp.member.vo.MemberVO;

@Controller("memberController")
//@EnableAspectJAutoProxy
public class MemberControllerImpl implements MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	MemberVO memberVO;
	
	@RequestMapping(value = { "/","/main.do"}, method = RequestMethod.GET)
	private ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		String viewName = (String)request.getAttribute("viewName");
		System.out.println("main view: " + viewName);

		ModelAndView mav = new ModelAndView();
		viewName="main/html/main";
		mav.setViewName(viewName);
		List lectureList = memberService.listLectures();
		System.out.println("lectureList.size(): " + lectureList.size());
		mav.addObject("lectureList", lectureList);

		return mav;
	}

	@RequestMapping(value = "/listLectures.do", method = RequestMethod.GET)
	public ModelAndView listLectures(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		String viewName = (String)request.getAttribute("viewName");
		System.out.println("listLectures view: " + viewName);

		ModelAndView mav=new ModelAndView();
		viewName = "lecture/html/list";
		mav.setViewName(viewName);
		List lectureList = memberService.listLectures();
		mav.addObject("lectureList", lectureList);

		return mav;
	}

	@RequestMapping(value = "/lectureDetail.do", method = RequestMethod.GET)
	public ModelAndView lectureDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		String viewName = (String)request.getAttribute("viewName");
		System.out.println("lectureDetail view: " + viewName);

		ModelAndView mav=new ModelAndView();
		viewName = "lecture/html/detail";
		mav.setViewName(viewName);

		LectureVO lectureVO = new LectureVO();
		String lectureKey=request.getParameter("lectureKey");
		int lectureKeyInt = Integer.parseInt(lectureKey);
		String lectureWriterKey=request.getParameter("lectureWriterKey");
		int lectureWriterKeyInt = Integer.parseInt(lectureWriterKey);
		lectureVO.setLectureKey(lectureKeyInt);
		lectureVO.setLectureWriterKey(lectureWriterKeyInt);
		LectureVO lectureDetail = memberService.lectureDetail(lectureVO);
		mav.addObject("lectureDetail", lectureDetail);

		return mav;
	}

	@RequestMapping(value = "/lecturePurchase.do", method = RequestMethod.GET)
	public ModelAndView lecturePurchase(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		String viewName = (String)request.getAttribute("viewName");
		System.out.println("lecturePurchase view: " + viewName);

		ModelAndView mav=new ModelAndView();
		viewName = "lecture/html/purchase";
		mav.setViewName(viewName);

		LectureVO lectureVO = new LectureVO();
		String lectureKey=request.getParameter("lectureKey");
		int lectureKeyInt = Integer.parseInt(lectureKey);
		lectureVO.setLectureKey(lectureKeyInt);


		LectureVO lectureDetail = memberService.lectureDetail(lectureVO);
		mav.addObject("lecture", lectureDetail);

		return mav;
	}

	@RequestMapping(value = "/purchaseComplete.do", method = RequestMethod.GET)
	public ModelAndView purchaseComplete(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		String viewName = (String)request.getAttribute("viewName");
		System.out.println("purchaseComplete view: " + viewName);

		ModelAndView mav=new ModelAndView();
		viewName = "main/html/main";
		mav.setViewName(viewName);

		LectureVO lectureVO = new LectureVO();
		String lectureKey=request.getParameter("lectureKey");
		int lectureKeyInt = Integer.parseInt(lectureKey);
		lectureVO.setLectureKey(lectureKeyInt);

//		HttpSession session=request.getSession();
//		MemberVO member = (MemberVO)session.getAttribute("member");
//		lectureVO.setLectureStudentKey(member.getUserId());

//		LectureVO addLecture = memberService.addLecture(lectureVO);

		return mav;
	}


	
	@Override 
	@RequestMapping(value="/member/listMembers.do" ,method = RequestMethod.GET)
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		System.out.println("listviewName: " + viewName);
		List membersList = memberService.listMembers();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("membersList", membersList);
		return mav;
	}

	@Override
	@RequestMapping(value="/member/addMember.do" ,method = RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute("member") MemberVO member,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = 0;
		result = memberService.addMember(member);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/member/removeMember.do" ,method = RequestMethod.GET)
	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
//		String user_id = request.getParameter("id");
		memberService.removeMember(id);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}
	/*
	@RequestMapping(value = { "/member/loginForm.do", "/member/memberForm.do" }, method =  RequestMethod.GET)
	@RequestMapping(value = "/member/*Form.do", method =  RequestMethod.GET)
	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	*/
	
	@Override
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("member") MemberVO member,
				              RedirectAttributes rAttr,
		                       HttpServletRequest request, HttpServletResponse response) throws Exception {
	ModelAndView mav = new ModelAndView();
	memberVO = memberService.login(member);
	if(memberVO != null) {
	    HttpSession session = request.getSession();
	    session.setAttribute("member", memberVO);
	    session.setAttribute("isLogOn", true);
	    //mav.setViewName("redirect:/member/listMembers.do");
	    String action = (String)session.getAttribute("action");
	    session.removeAttribute("action");
	    if(action!= null) {	
	       mav.setViewName("redirect:"+action);
	    }else {
	       mav.setViewName("redirect:/member/listMembers.do");	
	    }

	}else {
	   rAttr.addAttribute("result","loginFailed");
	   mav.setViewName("redirect:/member/loginForm.do");
	}
	return mav;
	}

	@Override
	@RequestMapping(value = "/member/logout.do", method =  RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/member/listMembers.do");
		return mav;
	}	

	@RequestMapping(value = "/member/*Form.do", method =  RequestMethod.GET)
	private ModelAndView form(@RequestParam(value= "result", required=false) String result,
							  @RequestParam(value= "action", required=false) String action,
						       HttpServletRequest request, 
						       HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		HttpSession session = request.getSession();
		session.setAttribute("action", action);  
		ModelAndView mav = new ModelAndView();
		mav.addObject("result",result);
		mav.setViewName(viewName);
		return mav;
	}
	

	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}

		int begin = 0;
		if (!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length();
		}

		int end;
		if (uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		} else {
			end = uri.length();
		}

		String viewName = uri.substring(begin, end);
		if (viewName.indexOf(".") != -1) {
			viewName = viewName.substring(0, viewName.lastIndexOf("."));
		}
		if (viewName.lastIndexOf("/") != -1) {
			viewName = viewName.substring(viewName.lastIndexOf("/", 1), viewName.length());
		}
		return viewName;
	}


}
