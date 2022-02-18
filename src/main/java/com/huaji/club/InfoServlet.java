package com.huaji.club;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import DBUtil.DBUtil;

@WebServlet(name = "infoServlet", value = "/info")
public class InfoServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        String mid = request.getParameter("mid");
        DBUtil.mno = mid;

        String mname = "";
        String msex = "";
        String mcoll = "";
        String mclass = "";
        String mpoli = "";
        String mtel = "";
        String mjob = "";

        //查询
        try {
            Connection connect = DBUtil.getConnect();
            Statement statement = connect.createStatement(); // Statement可以理解为数据库操作实例，对数据库的所有操作都通过它来实现
            ResultSet result;

            String sqlQuery = "select * from member_info where mno ='" + mid + "'";
            result = statement.executeQuery(sqlQuery);

            if(!result.next()){ // 不存在
                PrintWriter pw = response.getWriter();
                pw.print("<script>alert('查询失败!'); window.location='info.jsp' </script>");
                pw.flush();
                pw.close();
                return;
            } else { // 存在
                mname = result.getString("mname");
                msex = result.getString("msex");
                mcoll = result.getString("mcoll");
                mclass = result.getString("mclass");
                mpoli = result.getString("mpoli");
                mtel = result.getString("mtel");
                mjob = result.getString("mjob");
            }
        } catch (SQLException e) {
            PrintWriter pw = response.getWriter();
            pw.print("<script>alert('数据库连接错误!'); window.location='info.jsp' </script>");
            pw.flush();
            pw.close();
            return;
        }

        request.setAttribute("mname",mname);
        request.setAttribute("msex",msex);
        request.setAttribute("mtel",mtel);
        request.setAttribute("mcol",mcoll);
        request.setAttribute("mclass",mclass);
        request.setAttribute("mpol",mpoli);
        request.setAttribute("mjob",mjob);
        request.getRequestDispatcher("info.jsp").forward(request,response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doGet(request,response);
    }
}
