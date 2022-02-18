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

@WebServlet(name = "updateInfoServlet", value = "/updateInfo")
public class UpdateInfoServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        String mid = DBUtil.mno;
        String mname = request.getParameter("mname");
        String msex = request.getParameter("msex");
        String mcoll = request.getParameter("mcol");
        String mclass = request.getParameter("mclass");
        String mpoli = request.getParameter("mpol");
        String mtel = request.getParameter("mtel");
        String mjob = request.getParameter("mjob");

        if(mid.compareTo("")==0){
            PrintWriter pw = response.getWriter();
            pw.print("<script>alert('学号为空!'); window.location='info.jsp' </script>");
            pw.flush();
            pw.close();
            return;
        }

        //查询
        try {
            Connection conn = DBUtil.getConnect();
            Statement statement = conn.createStatement(); // Statement可以理解为数据库操作实例，对数据库的所有操作都通过它来实现
            PreparedStatement ps;

            String sqlQuery = "UPDATE member_info SET mname=?,msex=?,mcoll=?,mclass=?,mpoli=?,mtel=?,mjob=? WHERE mno=?";
            ps = conn.prepareStatement(sqlQuery);
            ps.setString(1,mname);
            ps.setString(2,msex);
            ps.setString(3,mcoll);
            ps.setString(4,mclass);
            ps.setString(5,mpoli);
            ps.setString(6,mtel);
            ps.setString(7,mjob);
            ps.setString(8,mid);
            ps.executeUpdate();

            ps.close();
            statement.close();
            conn.close();

            PrintWriter pw = response.getWriter();
            pw.print("<script>alert('修改成功!'); window.location='info.jsp' </script>");
            pw.flush();
            pw.close();

        } catch (SQLException e) {
            PrintWriter pw = response.getWriter();
            pw.print("<script>alert('数据库连接错误!'); window.location='info.jsp' </script>");
            pw.flush();
            pw.close();
            return;
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request, response);
    }
}
