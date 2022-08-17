package DAO;

import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddOrderDao {
    private  static final Logger log = Logger.getLogger(AddOrderDao.class);


    public  static String insertOrder(String periodicalId, String username){
        Connection conn = ConnectionPool.getInstance().getConnection();
        String sql = "insert into orders (periodicals_id, username) values(?,?)";
        try {
            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(periodicalId));
            ps.setString(2, username);
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
        return "order successfully added!";

    }
}
