package com.shopify.model;

public class Cart extends Products{
private int quantiy;

public Cart() {
	
}

public int getQuantiy() {
	return quantiy;
}

public void setQuantiy(int quantiy) {
	this.quantiy = quantiy;
}

@Override
public String toString() {
	return "Cart [quantiy=" + quantiy + "]";
}

}
