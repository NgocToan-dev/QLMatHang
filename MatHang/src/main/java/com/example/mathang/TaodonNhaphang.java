package com.example.mathang;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "taodonNhaphangServlet", value = "/tao-don-nhap-hang")
public class TaodonNhaphang extends HttpServlet {

    private String message;

    public void init() {
        message = "Quan ly nhap hang";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");


        RequestDispatcher rd = request.getRequestDispatcher("nhaphang/taodonnhaphang.jsp");
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }

    public void destroy() {
    }
}
