package com.kh.lodging.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.lodging.model.service.LodgingService;
import com.kh.lodging.model.vo.Lodging;
import com.kh.lodging.model.vo.Review;

/**
 * Servlet implementation class LodgingDetailController
 */
@WebServlet("/lodDetail.lo")
public class LodgingDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LodgingDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //숙소 상제 페이지 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int lno= Integer.parseInt(request.getParameter("lno"));
		Lodging lod= new LodgingService().selectDetailLodging(lno);
		ArrayList<Review> list = new LodgingService().selectReview(lno);
		request.setAttribute("lod",lod );
		request.setAttribute("list",list );
		request.getRequestDispatcher("views/lod/lodDetailView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
