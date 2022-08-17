package DAO;

import Entity.Member;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
    private static final Logger log = Logger.getLogger(RegisterDao.class);

    public   String insert(Member member){

        Connection con = ConnectionPool.getInstance().getConnection();
        String sql = "insert into member (uname, password, email,phone, isBlocked) values(?,?,?,?,?)";
        try {
            con.setAutoCommit(false);
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,member.getUname());
            ps.setString(2,member.getPassword());
            ps.setString(3,member.getEmail());
            ps.setString(4,member.getPhone());
            ps.setString(5, "");
            ps.executeUpdate();
            con.commit();
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                log.error("Ошибка", ex);

            }
            log.error("Ошибка", e);
        }finally {
            ConnectionPool.getInstance().closeAndSetAutoCommit(con);
        }
        return "You have registered successfully!";
    }
}
