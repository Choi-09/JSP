package model2.mvcboard;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mvcboard/view.do")
public class ViewController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) 
        throws ServletException, IOException {
        // 게시물 불러오기
        MVCBoardDAO dao = new MVCBoardDAO();
        String idx = req.getParameter("idx");
        dao.updateVisitCount(idx);  // 조회수 1 증가
        MVCBoardDTO dto = dao.selectView(idx);
        dao.close();

        // 줄바꿈 처리
        dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));

        // 게시물(dto) 저장 후 뷰로 포워드
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("/14MVCBoard/View.jsp").forward(req, resp);
    }
}

//클라이언트 요청에 따라 서블릿 컨테이너는 service() 메서드를 호출하고, service() 메서드는 요청이 GET인지 POST인지 구분하여 각각 doGet(), doPost() 메서드를 호출한다.
//HttpServlet 클래스에서 사용자 요청을 처리하는 doGet/doPost 메서드는 모두 HttpServletRequest와 HttpServletResponse 객체를 매개변수로 가지고 있다.
