package com.admin;

public class Category {
	private int cat_id;
	private String p_cat;
	
	
	public String getP_cat() {
		return p_cat;
	}
	public void setP_cat(String p_cat) {
		this.p_cat = p_cat;
	}
	public int getCat_id() {
		return cat_id;
	}
	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}
	@Override
	public String toString() {
		return "Category [cat_id=" + cat_id + ", p_cat=" + p_cat + "]";
	}

}
