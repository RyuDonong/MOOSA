package com.kh.tour.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MoosaFileRenamePolicy;
import com.kh.tour.model.service.TourService;
import com.kh.tour.model.vo.TourBoard;
import com.kh.tour.model.vo.TourPhoto;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class TourInsertController
 */
@WebServlet("/insert.to")
public class TourInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TourInsertController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("views/tour/tourInsertView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		// 해당 요청이 multipart요청이 맞는지 판별
		if (ServletFileUpload.isMultipartContent(request)) {
			// 용량
			int maxSize = 10 * 1024 * 1024;
			// 저장경로
			String savePath = request.getSession().getServletContext().getRealPath("/resources/tourImages/");

			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
					new MoosaFileRenamePolicy());

			String title = multiRequest.getParameter("title");
			String content = multiRequest.getParameter("content");
			String boardWriter = multiRequest.getParameter("userNo");

			TourBoard b = new TourBoard();
			b.setBoardTitle(title);
			b.setBoardContent(content);
			b.setBoardWriter(boardWriter);

			System.out.println(title);
			System.out.println(content);
			System.out.println(boardWriter);

			// Attachment 처리
			// 첨부파일의 경우 대표이미지에 required 속성을 작성했기 때문에 무조건 1개이상 넘어오게 된다.
			// 여러개가 넘어온다면 여러개의 데이터를 받아서 처리해야한다.
			ArrayList<TourPhoto> tpList = new ArrayList<>();
			// 첨부파일정보가 있다면 리스트에 추가해주기

			// 키값 반복하며 데이터 추출하기
			for (int i = 1; i <= 4; i++) {
				String key = "file" + i; // 키값작성

				// 해당 키값에 넘어온 데이터가 있는지 확인
				if (multiRequest.getOriginalFileName(key) != null) {

					TourPhoto tp = new TourPhoto();
					tp.setOriginName(multiRequest.getOriginalFileName(key));
					tp.setChangeName(multiRequest.getFilesystemName(key));
					tp.setFilePath("/resources/tourImages/");

					// 대표이미지 판별(썸네일용도)
					if (i == 1) { // 대표이미지 1
						tp.setFileLevel(1);

					} else {// 상세이미지 2
						tp.setFileLevel(2);
					}
					// 다 추가했으니 리스트에 담기
					tpList.add(tp);
				}

			}

			// 서비스에 요청하기(게시글정보와 첨부파일정보 같이 넘기기)
			int result = new TourService().insertThumbnail(b, tpList);

			// 처리결과에 따라서 응답뷰 지정하기
			HttpSession session = request.getSession();

			String msg = "";
			if (result > 0) {
				msg = "사진게시글 작성 성공!";
			} else {
				msg = "사진게시글 작성 실패!";
			}
			session.setAttribute("alertMsg", msg);
			response.sendRedirect(request.getContextPath() + "/tour.to");

		}

	}

}