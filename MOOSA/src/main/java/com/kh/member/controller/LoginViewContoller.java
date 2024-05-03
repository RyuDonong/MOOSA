package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class LoginContoller
 */
@WebServlet("/login.me")
public class LoginViewContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginViewContoller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		//아이디저장
		Cookie cookie = null;
		
		String saveId = request.getParameter("saveId");
		
		if(saveId !=null) {
			cookie = new Cookie("userId",userId);
			
			cookie.setMaxAge(60*60*24);
			
			response.addCookie(cookie);
			System.out.println("쿠키성공");
		}else {
			cookie = new Cookie("userId",null);
			cookie.setMaxAge(0);
			
			response.addCookie(cookie);
			System.out.println("쿠키실패");
		}
		
		Member loginUser = new MemberService().loginMember(userId,userPwd);
		//
		HttpSession session = request.getSession();
		
		
		if(loginUser==null) { //실패시
			System.out.println("로그인 실패");
		}else { //성공시
			session.setAttribute("loginUser", loginUser);
			System.out.println("로그인 성공");
			
			response.sendRedirect(request.getContextPath());
		}
	}
	

}
