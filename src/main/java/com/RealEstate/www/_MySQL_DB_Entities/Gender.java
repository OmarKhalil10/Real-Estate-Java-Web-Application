package com.RealEstate.www._MySQL_DB_Entities;
// Generated May 11, 2022, 11:53:45 PM by Hibernate Tools 5.6.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Gender generated by hbm2java
 */
public class Gender implements java.io.Serializable {

	private int genderId;
	private String type;
	private Set employeeses = new HashSet(0);

	public Gender() {
	}

	public Gender(int genderId, String type) {
		this.genderId = genderId;
		this.type = type;
	}

	public Gender(int genderId, String type, Set employeeses) {
		this.genderId = genderId;
		this.type = type;
		this.employeeses = employeeses;
	}

	public int getGenderId() {
		return this.genderId;
	}

	public void setGenderId(int genderId) {
		this.genderId = genderId;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Set getEmployeeses() {
		return this.employeeses;
	}

	public void setEmployeeses(Set employeeses) {
		this.employeeses = employeeses;
	}

}
