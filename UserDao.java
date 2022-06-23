package com.shopify.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.shopify.model.User;

public class UserDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public UserDao( Connection con) {
		this.con=con;
	}
	
	public User userLogin(String email, String password) {
		User user =null;
		try {
			query ="select * from user where email=? and password=?";
			pst=this.con.prepareStatement(query);
			pst.setString(1,email);
			pst.setString(2, password);
			rs=pst.executeQuery();
			if(rs.next()) {
				user = new User();
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				
				
			}
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return user;
	}

}
