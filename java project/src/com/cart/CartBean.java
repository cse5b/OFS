package com.cart;


import java.util.ArrayList;


public class CartBean {
 private ArrayList<CartItemBean> alCartItems = new ArrayList<CartItemBean>();
 private double dblOrderTotal ;
  
 public int getLineItemCount() {
  return alCartItems.size();
 }
  
 public void deleteCartItem(String strItemIndex) {
  int iItemIndex = 0;
  try {
	   System.out.println("carte");

   iItemIndex = Integer.parseInt(strItemIndex);
   alCartItems.remove(iItemIndex - 1);
   calculateOrderTotal();
  } catch(NumberFormatException nfe) {
   System.out.println("Error while deleting cart item: "+nfe.getMessage());
   nfe.printStackTrace();
  }
 }
  
 public void updateCartItem(String strItemIndex, String strQuantity) {
  double dblTotalCost = 0.0;
  double dblUnitCost = 0.0;
  int iQuantity = 0;
  int iItemIndex = 0;
  CartItemBean cartItem = null;
  try {
	   System.out.println("cartu");

   iItemIndex = Integer.parseInt(strItemIndex);
   iQuantity = Integer.parseInt(strQuantity);
   if(iQuantity>0) {
    cartItem = alCartItems.get(iItemIndex-1);
    dblUnitCost = cartItem.getUnitCost();
    dblTotalCost = dblUnitCost*iQuantity;
    cartItem.setQuantity(iQuantity);
    cartItem.setTotalCost(dblTotalCost);
    calculateOrderTotal();
   }
  } catch (NumberFormatException nfe) {
   System.out.println("Error while updating cart: "+nfe.getMessage());
   nfe.printStackTrace();
  }
   
 }
  
 public void addCartItem(String Name, String Model,
String strUnitCost, String strQuantity) {
  double dblTotalCost = 0.0;
  double dblUnitCost = 0.0;
  int iQuantity = 0;
  CartItemBean cartItem = new CartItemBean();
  try {
   dblUnitCost = Double.parseDouble(strUnitCost);
   iQuantity = Integer.parseInt(strQuantity);
   System.out.println("xxfgf");
   if(iQuantity>0) {
    dblTotalCost = dblUnitCost*iQuantity;
    cartItem.setName(Name);
    cartItem.setModel(Model);
    cartItem.setUnitCost(dblUnitCost);
    cartItem.setQuantity(iQuantity);
    cartItem.setTotalCost(dblTotalCost);
    alCartItems.add(cartItem);
    calculateOrderTotal();
   }
    
  } catch (NumberFormatException e) {
   System.out.println("Error while parsing from String to primitive types: "+e.getMessage());
   e.printStackTrace();
  }
 }
  
 public void addCartItem(CartItemBean cartItem) {
  alCartItems.add(cartItem);
 }
  
 public CartItemBean getCartItem(int iItemIndex) {
  CartItemBean cartItem = null;
  if(alCartItems.size()>iItemIndex) {
   cartItem = alCartItems.get(iItemIndex);
  }
  return cartItem;
 }
  
 public ArrayList<CartItemBean> getCartItems() {
  return alCartItems;
 }
 public void setCartItems(ArrayList<CartItemBean> alCartItems) {
  this.alCartItems = alCartItems;
 }
 public double getOrderTotal() {
  return dblOrderTotal;
 }
 public void setOrderTotal(double dblOrderTotal) {
  this.dblOrderTotal = dblOrderTotal;
 }
  
 protected void calculateOrderTotal() {
  double dblTotal = 0;
  for(int counter=0;counter<alCartItems.size();counter++) {
   CartItemBean cartItem = alCartItems.get(counter);
   dblTotal+=cartItem.getTotalCost();
    
  }
  setOrderTotal(dblTotal);
 }
 
}