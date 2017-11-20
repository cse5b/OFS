package com.admin;

import java.sql.Blob;

public class product {
private int product_id;
private String p_name;
private int p_price;
private int P_sprice;
private int cat_id;
private String p_specification;
private String p_warranty;
private String p_category;
private String dimension;
private String model;

private Blob image;
public Blob getImage() {
	return image;
}
public void setImage(Blob image) {
	this.image = image;
}
public String getP_warranty() {
	return p_warranty;
}
public void setP_warranty(String p_warranty) {
	this.p_warranty = p_warranty;
}
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
public int getP_price() {
	return p_price;
}
public void setP_price(int p_price) {
	this.p_price = p_price;
}
public String getP_specification() {
	return p_specification;
}
public void setP_specification(String p_specification) {
	this.p_specification = p_specification;
}

public String getP_category() {
	return p_category;
}
public void setP_category(String p_category) {
	this.p_category = p_category;
}

public int getP_sprice() {
	return P_sprice;
}
public void setP_sprice(int p_sprice) {
	P_sprice = p_sprice;
}

@Override
public String toString() {
	return "product [product_id=" + product_id + ", p_name=" + p_name + ", p_price=" + p_price + ", P_sprice="
			+ P_sprice + ", cat_id=" + cat_id + ", p_specification=" + p_specification + ", p_warranty=" + p_warranty
			+ ", p_category=" + p_category + ", dimension=" + dimension + ", model=" + model + ", image=" + image + "]";
}
public int getCat_id() {
	return cat_id;
}
public void setCat_id(int cat_id) {
	this.cat_id = cat_id;
}
public String getDimension() {
	return dimension;
}
public void setDimension(String dimension) {
	this.dimension = dimension;
}
public String getModel() {
	return model;
}
public void setModel(String model) {
	this.model = model;
}






}
