package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet({"*.do", "*.nhn"}) // 2개 이상일 땐 안에서 중괄호로 묶음
@WebServlet({"/auth/*"}) // auth 디렉토리가 포함된 URL 모두 처리
// 최근에는 디렉토리 패턴을 많이 사용
public class DoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("<h3>확장자가 do인 요청을 처리</h3>");
		// 공통된 URL을 제거한 사용자 요청 경로와 전송방식을 출력
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length() + 1);
		
		// 요청방식 확인
		String method = request.getMethod();
		
		// Controller에서는 URL과 Method를 이용해서 요청을 구분해서 처리
		// Spring에서는 이 작업까지 해서 작성만 하면 됨
		
		response.getWriter().append("<h3>" + command + ":" + method + "</h3>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
