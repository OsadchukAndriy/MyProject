package DAO;

import Entity.Member;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AllUsersDao {

    private static final Logger log = Logger.getLogger(AllUsersDao.class);

    public static List<Member> getAllUsers() {
        String uname = "";
        String email = "";
        String phone = "";
        String isBlocked = "";

        List<Member> list = new ArrayList<>();

        Connection connection = ConnectionPool.getInstance().getConnection();
        String sql = "select * from member";
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                uname = rs.getString("uname");
                email = rs.getString("email");
                phone = rs.getString("phone");
                isBlocked = rs.getString("isBlocked") == null ? "" : rs.getString("isBlocked");
                list.add(new Member(uname, phone, email, isBlocked));
            }
            return list;

        } catch (SQLException e) {
            log.error("Ошибка", e);
            return list;
        }
    }

    public static void blockUser(String blockUser) {

        Connection conn = ConnectionPool.getInstance().getConnection();
        String sql = "update member set isBlocked = 'Blocked' where uname = ?";
        try {
            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, blockUser);
            ps.executeUpdate();
            conn.commit();
        } catch (SQLException e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                log.error("Ошибка", ex);
            }
            log.error("Ошибка", e);
        } finally {
            try {
                conn.setAutoCommit(true);
                conn.close();
            } catch (SQLException e) {
                log.error("Ошибка", e);
            }
        }

    }


    public static void unblockUser(String unblockUser) {

        Connection conn = ConnectionPool.getInstance().getConnection();
        String sql = "update member set isBlocked = '' where uname = ?";
        try {
            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, unblockUser);
            ps.executeUpdate();
            conn.commit();
        } catch (SQLException e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                log.error("Ошибка", ex);
            }
            log.error("Ошибка", e);
        } finally {
            try {
                conn.setAutoCommit(true);
                conn.close();
            } catch (SQLException e) {
                log.error("Ошибка", e);
            }
        }
    }
}
