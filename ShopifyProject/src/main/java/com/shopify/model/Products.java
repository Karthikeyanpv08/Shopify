package com.shopify.model;

public class Products {
private int id;
private String category;
private String price;
private String image;
private String name;


public Products() {
	super();
}


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

@Override
public String toString() {
	return "Products [id=" + id + ", category=" + category + ", price=" + price + ", image=" + image + ", name=" + name
			+ "]";
}



}
