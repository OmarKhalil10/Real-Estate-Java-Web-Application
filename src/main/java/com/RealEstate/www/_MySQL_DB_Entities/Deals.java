package com.RealEstate.www._MySQL_DB_Entities;
// Generated May 11, 2022, 11:53:45 PM by Hibernate Tools 5.6.7.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Deals generated by hbm2java
 */
public class Deals implements java.io.Serializable {

	private int dealsId;
	private Employees employeesByAssignedToId;
	private Employees employeesByPreAssignedToId;
	private Projects projects;
	private Date timeCreated;
	private String buyerName;
	private String email;
	private int downPayment;
	private Set dealsPhoneNumbers = new HashSet(0);
	private Set descriptions = new HashSet(0);

	public Deals() {
	}

	public Deals(int dealsId, Employees employeesByAssignedToId, Projects projects, Date timeCreated, String buyerName,
			String email, int downPayment) {
		this.dealsId = dealsId;
		this.employeesByAssignedToId = employeesByAssignedToId;
		this.projects = projects;
		this.timeCreated = timeCreated;
		this.buyerName = buyerName;
		this.email = email;
		this.downPayment = downPayment;
	}

	public Deals(int dealsId, Employees employeesByAssignedToId, Employees employeesByPreAssignedToId,
			Projects projects, Date timeCreated, String buyerName, String email, int downPayment, Set dealsPhoneNumbers,
			Set descriptions) {
		this.dealsId = dealsId;
		this.employeesByAssignedToId = employeesByAssignedToId;
		this.employeesByPreAssignedToId = employeesByPreAssignedToId;
		this.projects = projects;
		this.timeCreated = timeCreated;
		this.buyerName = buyerName;
		this.email = email;
		this.downPayment = downPayment;
		this.dealsPhoneNumbers = dealsPhoneNumbers;
		this.descriptions = descriptions;
	}

	public int getDealsId() {
		return this.dealsId;
	}

	public void setDealsId(int dealsId) {
		this.dealsId = dealsId;
	}

	public Employees getEmployeesByAssignedToId() {
		return this.employeesByAssignedToId;
	}

	public void setEmployeesByAssignedToId(Employees employeesByAssignedToId) {
		this.employeesByAssignedToId = employeesByAssignedToId;
	}

	public Employees getEmployeesByPreAssignedToId() {
		return this.employeesByPreAssignedToId;
	}

	public void setEmployeesByPreAssignedToId(Employees employeesByPreAssignedToId) {
		this.employeesByPreAssignedToId = employeesByPreAssignedToId;
	}

	public Projects getProjects() {
		return this.projects;
	}

	public void setProjects(Projects projects) {
		this.projects = projects;
	}

	public Date getTimeCreated() {
		return this.timeCreated;
	}

	public void setTimeCreated(Date timeCreated) {
		this.timeCreated = timeCreated;
	}

	public String getBuyerName() {
		return this.buyerName;
	}

	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getDownPayment() {
		return this.downPayment;
	}

	public void setDownPayment(int downPayment) {
		this.downPayment = downPayment;
	}

	public Set getDealsPhoneNumbers() {
		return this.dealsPhoneNumbers;
	}

	public void setDealsPhoneNumbers(Set dealsPhoneNumbers) {
		this.dealsPhoneNumbers = dealsPhoneNumbers;
	}

	public Set getDescriptions() {
		return this.descriptions;
	}

	public void setDescriptions(Set descriptions) {
		this.descriptions = descriptions;
	}

}