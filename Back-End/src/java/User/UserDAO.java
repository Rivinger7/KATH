/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User;

import DBUtils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admins
 */
public class UserDAO {

    Connection con = null;
    String sql = null;
    ResultSet rs = null;

    public void register(String username, String password) {
        try {
            con = DBUtils.getConnection();
            sql = " INSERT INTO [User](User_ID,First_Name,Last_Name,username,passwordHash, "
                    + "Phone_Number,Role)\n"
                    + "VALUES\n"
                    + "(3,'', '', ?, ?, '', 0)";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            stmt.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error in servlet. Detail: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    public boolean checkAccountExist(String username) {
        boolean isExisted = false;
        try {
            con = DBUtils.getConnection();
            sql = " SELECT username FROM [User] ";
            sql += "WHERE username = ? ";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, username);
            
            rs = stmt.executeQuery();
//            if(rs != null) {
//                isExisted = true;
//            }
            isExisted = rs.next(); // If rs.next() returns 0 mean there is no account in the database
        } catch (SQLException ex) {
            System.out.println("Error in servlet. Detail: " + ex.getMessage());
            ex.printStackTrace();
        }
        
        return isExisted;
    }

    public UserDTO login(String username, String password) {
        UserDTO user = null;

        try {
            con = DBUtils.getConnection();
            sql = " SELECT username, First_Name, Last_Name, City, "
                    + "House_Number, District, Street, Ward, Phone_Number, Email, "
                    + "Birthday, Role FROM [User] ";
            sql += " WHERE username = ?  AND passwordHash = ?";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);

            rs = stmt.executeQuery();

            if (rs != null) {
                if (rs.next()) {

                    user = new UserDTO();
                    user.setUsername(rs.getString("username"));
                    user.setFirstName(rs.getString("First_Name"));
                    user.setLastName(rs.getString("Last_Name"));
                    user.setCity(rs.getString("City"));
                    user.setHouseNumber(rs.getString("House_Number"));
                    user.setDistrict(rs.getString("District"));
                    user.setStreet(rs.getString("Street"));
                    user.setWard(rs.getString("Ward"));
                    user.setPhoneNumber(rs.getString("Phone_Number"));
                    user.setEmail(rs.getString("Email"));
                    user.setBirthday(rs.getDate("Birthday"));
                    user.setRole(rs.getInt("Role"));
                }
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println("Error in servlet. Details:" + ex.getMessage());
            ex.printStackTrace();

        }
        return user;
    }

}
