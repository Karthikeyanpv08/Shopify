package com.shopify.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shopify.connection.DbConnect;
import com.shopify.model.Products;

public class ProductDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public ProductDao (Connection con) {
		this.con=con;
		
	}
	public List<Products> getAllProducts(){
		
		List<Products> products=new ArrayList<Products>();
		
		try {
			
			query="select * from products";
			pst=this.con.prepareStatement(query);
			rs=pst.executeQuery();
			while (rs.next()) {
				Products row=new Products();
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setCategory(rs.getString("category"));
				row.setPrice(rs.getString("price"));
				row.setImage(rs.getString("image"));
				System.out.println(row.getImage());
				
			products.add(row);			
			return products;
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return products;
	}

}
