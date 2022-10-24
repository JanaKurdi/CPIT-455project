package Database;

/**
 *
 * @author Razan Alshaikh
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Database_connection {

    String URL = "jdbc:mysql://localhost:3306/tagrest?useSSL=false";
    String USERNAME = "C3A_3"; 
    String PASSWORD = "RJD@12345"; 
    Connection con1 = null; 
    PreparedStatement preparedStmt = null;
    ResultSet resultSet = null;
    String sqlQuery = "";

    public Database_connection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con1 = DriverManager.getConnection(URL,USERNAME,PASSWORD);

        }catch(SQLException e){
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Database_connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
    // Adding customers
      public int insertUser(String firstname, String lastname, String username, String Email, String phone, String Address) {
        sqlQuery = "INSERT INTO Customer(phone ,username,Fname ,lname ,email, Address) VALUES( '" + phone + "', '" + username
                + "', '" + firstname +  "' ,'" + lastname + "','" + Email + "','" + Address + "' );";
        int i = 0;
        try{
            Statement statment = con1.createStatement();
            // return numbers of records
            // if 0 means no record added 
             i=statment.executeUpdate(sqlQuery);
        }
        catch(Exception e){
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }
      /// check is authorized Customer
        public boolean CheckISAuthourizedCustomer(String username, String pass) {
        boolean checkUser = false;
        sqlQuery = "SELECT * FROM Customer WHERE username='" + username + "' AND password='" + pass + "';";
        try {
            preparedStmt = con1.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
            Statement st = con1.createStatement();
            if (resultSet.next()) {
                checkUser = true;
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return checkUser;
    }
         /// check is authorized Admin
        public boolean CheckISAuthourizedAdmin(String username, String pass) {
        boolean checkUser = false;
        sqlQuery = "SELECT * FROM admin WHERE username='" + username + "' AND password='" + pass + "';";
        try {
            preparedStmt = con1.prepareStatement(sqlQuery);
            resultSet = preparedStmt.executeQuery();
            Statement st = con1.createStatement();
            if (resultSet.next()) {
                checkUser = true;
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return checkUser;
    }
    public void close() {
        try {
            con1.close();
        } catch (SQLException ex) {
            Logger.getLogger(Database_connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}