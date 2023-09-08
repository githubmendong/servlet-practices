package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class CookieServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int visitCount  = 0;
        // 쿠카 읽기
        Cookie[] cookies = request.getCookies();
        if (cookies != null && cookies.length > 0){
            for (Cookie cookie : cookies){
                if("visit-count".equals(cookie.getName())){
                    visitCount = Integer.parseInt(cookie.getValue());
                }
            }
        }

        visitCount++;

        //쿠키쓰기 굽기
        Cookie cookie = new Cookie("visit-count", String.valueOf(visitCount));
        cookie.setPath(request.getContextPath());
        cookie.setMaxAge(24 * 60 * 60); //day
        response.addCookie(cookie);

        // 화면 출력
        response.setContentType("text/html; charset=utf-8");
        PrintWriter pw = response.getWriter();
        pw.print("<h1>방문횟수"+visitCount + "</h1>");
    }

}
