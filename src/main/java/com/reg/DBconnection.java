package com.reg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBconnection {

	String dburl="jdbc:mysql://localhost:3307/H-Food-Delivery";
	String dbuser="root";
	String dbpwd="";
	String dbdriver="com.mysql.cj.jdbc.Driver";
	Connection con=null;
	
	public void loadDriver() {
		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	}
	
	public Connection getCon() {
		try {
			con=DriverManager.getConnection(dburl,dbuser,dbpwd);
		} catch (SQLException e) {
			
			e.printStackTrace();
		System.out.println("DB not connected"+e.getMessage());
		}
		return con;
		
	}
	
	public String addUser(User user1) {
		String messag="Created Successfully";
		
		loadDriver();
		Connection cnx=getCon();
	
		String sql="INSERT INTO users (FullName,Phone,Email,Location,Password,Role)VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement stm=cnx.prepareStatement(sql);
			stm.setString(1,user1.getFullname());
			stm.setString(2,user1.getPhone());
			stm.setString(3,user1.getEmail());
			stm.setString(4,user1.getLocation());
			stm.setString(5,user1.getPassword());
			stm.setString(6,user1.getRole());
			stm.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
			System.out.println("User not created ,"+e.getMessage());
		}
		
		
		
		return messag;
		
	}
	
	public ResultSet getUser(loginUser loguser1) {
		ResultSet row=null;
		loadDriver();
		Connection cnx=getCon();
		String sql="SELECT * FROM users WHERE Email=? AND Password=?";
		try {
			PreparedStatement stm=cnx.prepareStatement(sql);
			stm.setString(1, loguser1.getForm_email());
			stm.setString(2, loguser1.getForm_password());
			row=stm.executeQuery();
	
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		return row;
		
	}
	
    public int getPendingOrderCount() {
        int count = 0;
        loadDriver();
        Connection cnx = getCon();
        String sql = "SELECT COUNT(*) AS pending_count FROM orders WHERE order_status = 'pending'";
        try {
            PreparedStatement stm = cnx.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("pending_count");
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public int getCompletedOrderCount() {
        int count = 0;
        loadDriver();
        Connection cnx = getCon();
        String sql = "SELECT COUNT(*) AS completed_count FROM orders WHERE order_status = 'completed'";
        try {
            PreparedStatement stm = cnx.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("completed_count");
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
    
    public int getConclledOrderCount() {
        int count = 0;
        loadDriver();
        Connection cnx = getCon();
        String sql = "SELECT COUNT(*) AS concelled FROM orders WHERE order_status = 'concelled'";
        try {
            PreparedStatement stm = cnx.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("concelled");
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
	
	
}
