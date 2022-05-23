package com.huaji.club;

import DBUtil.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "staffRegServlet", value = "/staff-reg")
public class StaffRegServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        String name = request.getParameter("name");
        String tel = request.getParameter("tel");
        String apartment = request.getParameter("apartment");
        String intent = request.getParameter("intent");
        String intent2 = request.getParameter("intent2");

        try {
            Connection connect = DBUtil.getConnect();
            Statement statement = connect.createStatement();
            String sqlInsertPass = "insert into staff_reg_info (name,tel,apartment,intent,intent2) values('"+name+"','" + tel + "','" + apartment + "','" +intent+"','"+intent2+"')";
            int row1 = statement.executeUpdate(sqlInsertPass);
            if (row1 == 1){
                PrintWriter pw = response.getWriter();
                pw.print("<script>alert('报名成功!'); window.location='staff_reg.jsp' </script>");
                pw.flush();
                pw.close();
            }
        } catch (SQLException e) {
            PrintWriter pw = response.getWriter();
            pw.print("<script>alert('系统错误!'); window.location='staff_reg.jsp' </script>");
            pw.flush();
            pw.close();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }
}
