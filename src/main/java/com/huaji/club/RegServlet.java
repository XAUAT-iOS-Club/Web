package com.huaji.club;

import DBUtil.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "regServlet", value = "/reg")
public class RegServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        String mid = request.getParameter("mid");
        String mname = request.getParameter("mname");
        String msex = request.getParameter("msex");
        String mcoll = request.getParameter("mcol");
        String mclass = request.getParameter("mclass");
        String mpoli = request.getParameter("mpol");
        String mtel = request.getParameter("mtel");

        if(mid.compareTo("")==0){
            PrintWriter pw = response.getWriter();
            pw.print("<script>alert('学号为空!'); window.location='reg.jsp' </script>");
            pw.flush();
            pw.close();
            return;
        }else if(mid.length() != 10){
            PrintWriter pw = response.getWriter();
            pw.print("<script>alert('学号应该为10位!'); window.location='reg.jsp' </script>");
            pw.flush();
            pw.close();
            return;
        }

        try {
            Connection connect = DBUtil.getConnect();
            Statement statement = connect.createStatement();
            ResultSet result;

            String sqlQuery = "select * from user_account where username='" + mid + "'";

            // 查询类操作返回一个ResultSet集合，没有查到结果时ResultSet的长度为0
            result = statement.executeQuery(sqlQuery); // 先查询同样的账号（比如手机号）是否存在
            if(result.next()){ // 已存在
                PrintWriter pw = response.getWriter();
                pw.print("<script>alert('您已登记，请勿重复登记!'); window.location='reg.jsp' </script>");
                pw.flush();
                pw.close();
                return;
            } else { // 不存在
                String sqlInsertPass = "insert into member_info (mno,mname,msex,mcoll,mclass,mtel,mpoli) values('"+mid+"','" + mname + "','" + msex + "','" +mcoll+"','"+mclass+"','"+mtel
                        +"','"+mpoli+"')";
                int row1 = statement.executeUpdate(sqlInsertPass);
                if(row1 == 1){
                    response.sendRedirect("https://qm.qq.com/cgi-bin/qm/qr?k=GN0bMRH0uT4um3BYY1rQzE-z4QYWzVAt&jump_from=webapi");
                    return;
                }
            }
        } catch (SQLException e) {
            PrintWriter pw = response.getWriter();
            pw.print("<script>alert('数据库连接错误!'); window.location='reg.jsp' </script>");
            pw.flush();
            pw.close();
            return;
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        doGet(request,response);
    }
}
