package com.admin;

import java.io.InputStream;



public class product {
private int product_id;
private String p_name;
private String p_price;
private String P_sprice;
private String p_specification;
private String p_material;
private String p_warranty;
private String p_category;
private InputStream image;

public int getProduct_id() {
	return product_id;
}
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
public String getP_name() {
	return p_name;
}
public void setP_name(String p_name) {
	this.p_name = p_name;
}
public String getP_price() {
	return p_price;
}
public void setP_price(String p_price) {
	this.p_price = p_price;
}
public String getP_specification() {
	return p_specification;
}
public void setP_specification(String p_specification) {
	this.p_specification = p_specification;
}
public String getP_material() {
	return p_material;
}
public void setP_material(String p_material) {
	this.p_material = p_material;
}
public String getP_warranty() {
	return p_warranty;
}
public void setP_warranty(String p_warranty) {
	this.p_warranty = p_warranty;
}
public String getP_category() {
	return p_category;
}
public void setP_category(String p_category) {
	this.p_category = p_category;
}

public String getP_sprice() {
	return P_sprice;
}
public void setP_sprice(String p_sprice) {
	P_sprice = p_sprice;
}
public InputStream getImage() {
	return image;
}
public void setImage(InputStream image) {
	this.image = image;
}
@Override
public String toString() {
	return "product [product_id=" + product_id + ", p_name=" + p_name + ", p_price=" + p_price + ", P_sprice="
			+ P_sprice + ", p_specification=" + p_specification + ", p_material=" + p_material + ", p_warranty="
			+ p_warranty + ", p_category=" + p_category + ", image=" + image + "]";
}




}
