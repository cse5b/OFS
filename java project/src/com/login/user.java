package com.login;

public class user {
private int user_id;
private String fname;
private String lname;
private String email;
private String password;
private String mobile;
private String gender;
private String street;
private String state;
private String country;
private String pincode;
public int getUser_id() {
	return user_id;
}

public void setUser_id(int user_id) {
	this.user_id = user_id;
}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getLname() {
	return lname;
}

public void setLname(String lname) {
	this.lname = lname;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}
public String getMobile() {
	return mobile;
}

public void setMobile(String mobile) {
	this.mobile = mobile;
}


@Override
public String toString() {
	return "user [user_id=" + user_id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", password="
			+ password + ", mobile=" + mobile + ", gender=" + gender + ", street=" + street + ", state=" + state
			+ ", country=" + country + ", pincode=" + pincode + "]";
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getStreet() {
	return street;
}

public void setStreet(String street) {
	this.street = street;
}

public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}

public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}

public String getPincode() {
	return pincode;
}

public void setPincode(String pincode) {
	this.pincode = pincode;
}


}
