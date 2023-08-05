package com.reg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

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
		
	String selectEmail="SELECT * FROM users WHERE email=?";
	try {
		PreparedStatement stmE=cnx.prepareStatement(selectEmail);
		stmE.setString(1, user1.getEmail());
		ResultSet results=stmE.executeQuery();
		if(results.next()) {
			JOptionPane.showMessageDialog(null, "Email already Exist !! ");
		}else {
			
			String sql="INSERT INTO users (FullName,Phone,Email,Location,Password,Role)VALUES(?,?,?,?,?,?)";
			try {
				PreparedStatement stm=cnx.prepareStatement(sql);
				stm.setString(1,user1.getFullname());
				stm.setString(2,user1.getPhone());
				stm.setString(3,user1.getEmail());
				stm.setString(4,user1.getLocation());
				stm.setString(5,user1.getPassword());
				stm.setString(6,user1.getRole());
				int rs=stm.executeUpdate();
				
				if(rs>0) {
					JOptionPane.showMessageDialog(null, "User Created Successfully");
				}
				else {
					JOptionPane.showMessageDialog(null, "User not Created !!! Try again");
				}
			} catch (SQLException e) {
			
				e.printStackTrace();
				System.out.println("User not created ,"+e.getMessage());
			}
			
		}
		
		
	} catch (SQLException e) {
		
		e.printStackTrace();
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
    
public ResultSet getAllMeals() {
	ResultSet row=null;
	loadDriver();
	Connection cnx=getCon();
	String sql="SELECT * FROM Foods";
	try {
		PreparedStatement st=cnx.prepareStatement(sql);
		row=st.executeQuery();
	} catch (SQLException e) {
	
		e.printStackTrace();
		System.out.println("No data found !!"+e.getMessage() );
	}
	
	
	 return row;  
}


public void deleteFood(String foodId) {
	try {
		if(con!=null) {
			String sql="DELETE FROM Foods WHERE ID=?";
			PreparedStatement dst=con.prepareStatement(sql);
			dst.setString(1, foodId);
			dst.executeUpdate();
			dst.close();
			
			
			}
	}catch(SQLException e) {
		e.printStackTrace();    	
		}

}
public void addMeals(FoodItem foodit) {
    loadDriver();
    Connection cnx = getCon();
   
    String checkIfExistsQuery = "SELECT Quantity, Price FROM Foods WHERE FoodName = ?";
    String insertOrUpdateQuery;
    try {
        PreparedStatement checkStmt = cnx.prepareStatement(checkIfExistsQuery);
        checkStmt.setString(1, foodit.getFoodName());
        ResultSet rs = checkStmt.executeQuery();

        if (rs.next()) {
            // Food already exists in the database, update quantity and totalPrice
            int existingQuantity = rs.getInt("Quantity");
            int existingPrice = rs.getInt("Price");
            int updatedQuantity = existingQuantity + foodit.getQuantity();
            int updatedTotalPrice = (existingQuantity + foodit.getQuantity()) * ((existingPrice + foodit.getPrice())/2);

            insertOrUpdateQuery = "UPDATE Foods SET Quantity = ?, Price = ?, TotalPrice = ? WHERE FoodName = ?";
            PreparedStatement updateStmt = cnx.prepareStatement(insertOrUpdateQuery);
            updateStmt.setInt(1, updatedQuantity);
            updateStmt.setInt(2, (existingPrice + foodit.getPrice())/2);
            updateStmt.setInt(3, updatedTotalPrice);
            updateStmt.setString(4, foodit.getFoodName());
            updateStmt.executeUpdate();
            updateStmt.close();
        } else {
          
            insertOrUpdateQuery = "INSERT INTO Foods (FoodName, Quantity, Price, TotalPrice, Image) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement insertStmt = cnx.prepareStatement(insertOrUpdateQuery);
            insertStmt.setString(1, foodit.getFoodName());
            insertStmt.setInt(2, foodit.getQuantity());
            insertStmt.setInt(3, foodit.getPrice());
            insertStmt.setInt(4, foodit.getTotalPrice());
            insertStmt.setBlob(5, foodit.getImage());
            insertStmt.executeUpdate();
            insertStmt.close();
        }

        rs.close();
        checkStmt.close();
    } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("Not inserted / updated !! " + e.getMessage());
    }
}

public boolean deleteMeal(int foodId) {
	loadDriver();
    Connection cnx = getCon();
    
    String sql="DELETE FROM Foods WHERE ID=?";
    try {
		PreparedStatement stm=cnx.prepareStatement(sql);
		stm.setLong(1, foodId);
		int rowsAffected=stm.executeUpdate();
		if(rowsAffected>0) {
			return true;
		}
	} catch (SQLException e) {
	    System.out.println("Failed to delete "+e.getMessage());
		e.printStackTrace();
	}
    finally {
        try {
            cnx.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	
	return false;
   
}

public void updateMeals(UpdateMeal updatemeal) {
	loadDriver();
    Connection cnx = getCon();
	String sql="UPDATE Foods SET FoodName=? AND Price=? WHERE ID=?";
	
	try {
		PreparedStatement updStm=cnx.prepareStatement(sql);
		updStm.setString(1, updatemeal.getFoodname());
		updStm.setInt(2, updatemeal.getPrice());
		updStm.setInt(3, updatemeal.getFoodId());
		updStm.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
		System.out.println("Failed to update !! "+e.getMessage());
	}
	
}
public String insertOrder(orderSetterAndGetter order) {
	String mss="success";
    loadDriver();
    Connection cnx =getCon();

    String sql = "INSERT INTO orders (price, quantity, TotalPrice, FoodID, FoodName, orderEmail, Order_status, Schedule_time) VALUES (?, ?, ?, ?, ?, ?, ?,?)";

 
    try {
        PreparedStatement stmt = cnx.prepareStatement(sql);
        stmt.setInt(1, order.getPrice());
        stmt.setInt(2, order.getQuantity());
        stmt.setInt(3, order.getTotalPrice());
        stmt.setInt(4, order.getFoodID());
        stmt.setString(5, order.getFoodName());
        stmt.setString(6, order.getOrderEmail());
        stmt.setString(7, order.getOrder_status());
        stmt.setString(8, order.getSchedule_time());
        int rowsInserted = stmt.executeUpdate();
        if (rowsInserted > 0) {
           JOptionPane.showMessageDialog(null, "Your order completed");
        }
        else {
            JOptionPane.showMessageDialog(null, "Order Failed");

        }
    } catch (SQLException e) {
        e.printStackTrace();
        System.out.println("connected "+e.getMessage());
    } 

    return mss;
}


public ResultSet getMyOrder(CurrentUser curruser) {
	ResultSet row=null;
	   loadDriver();
	 Connection cnx =getCon();
	 
	 String sql="SELECT * FROM orders WHERE email=?";
	 try {
		PreparedStatement stmt = cnx.prepareStatement(sql);
		row=stmt.executeQuery();
	} catch (SQLException e) {	
		e.printStackTrace();
	System.out.println("Failed get data"+e.getMessage());
	}
	 
	return row;
}

}







    

