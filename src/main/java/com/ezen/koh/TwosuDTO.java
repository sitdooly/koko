package com.ezen.koh;

public class TwosuDTO {
int one,two;

public TwosuDTO() {
	super();
	// TODO Auto-generated constructor stub
}

public TwosuDTO(int one, int two) {
	super();
	this.one = one;
	this.two = two;
}

public int getOne() {
	return one;
}

public void setOne(int one) {
	this.one = one;
}

public int getTwo() {
	return two;
}

public void setTwo(int two) {
	this.two = two;
}

public void out() {//Ãâ·Â 
	System.out.println(one+"+"+two+"="+(one+two));
	
}
}