
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author jinjason
 */
public class DBOperation {
    Connection con = null;
    public Connection getCon() throws ClassNotFoundException, SQLException {
        if(con==null) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Student", "root", "");
        }
        return con;
    }
    
    public boolean insertRecord(Student s) {
//        int id = s.getId(); 
//        String name = s.getName();
        try {
            getCon();
            PreparedStatement ps = con.prepareStatement("insert into Student values(?,?)");
            ps.setInt(1, s.getId());
            ps.setString(2, s.getFirstName());
            ps.execute();
            return true;
        } catch (SQLException|ClassNotFoundException e) {
            
        }
        return false;
    } 
    public int insertRecords(List<Student> studentList) throws ClassNotFoundException, SQLException {
        int count = 0;
        try {
            getCon();
            PreparedStatement ps = con.prepareStatement("insert into Student values (?,?)");
            for (Student student: studentList) {
                ps.setInt(1, student.getId());
                ps.setString(2, student.getFirstName());
                ps.addBatch();
                count++;
            }
            ps.executeBatch();
        } catch (ClassNotFoundException ex) {
            
        } catch (SQLException e) {
            
        }
        return count;
    }
    
}
