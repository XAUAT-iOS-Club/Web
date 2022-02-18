package DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    public static String mno = "";

    public static Connection getConnect() {
        String url="jdbc:mysql://rm-bp10zo4yzj78ie97yfo.mysql.rds.aliyuncs.com:3306/db_iosclub"; // 数据库的Url
        Connection connect = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connect = DriverManager.getConnection(url, "wqy", "wqy15706036031");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState: " + e.getSQLState());
            System.out.println("VendorError: " + e.getErrorCode());
        }
        return connect;
    }
}
