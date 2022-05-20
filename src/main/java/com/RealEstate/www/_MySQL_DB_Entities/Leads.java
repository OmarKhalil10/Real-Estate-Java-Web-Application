package com.RealEstate.www._MySQL_DB_Entities;
// Generated May 11, 2022, 11:53:45 PM by Hibernate Tools 5.6.7.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Leads generated by hbm2java
 */
public class Leads implements java.io.Serializable {

	private int leadsId;
	private Employees employeesByAssignedToId;
	private Employees employeesByPreAssignedToId;
	private Source source;
	private Date timeCreated;
	private String clientName;
	private String email;
	private String request;
	private Set leadsPhoneNumbers = new HashSet(0);
	private Set descriptions = new HashSet(0);

	public Leads() {
	}

	public Leads(int leadsId, Employees employeesByAssignedToId, Employees employeesByPreAssignedToId, Source source,
			Date timeCreated, String clientName, String email) {
		this.leadsId = leadsId;
		this.employeesByAssignedToId = employeesByAssignedToId;
		this.employeesByPreAssignedToId = employeesByPreAssignedToId;
		this.source = source;
		this.timeCreated = timeCreated;
		this.clientName = clientName;
		this.email = email;
	}

	public Leads(int leadsId, Employees employeesByAssignedToId, Employees employeesByPreAssignedToId, Source source,
			Date timeCreated, String clientName, String email, String request, Set leadsPhoneNumbers,
			Set descriptions) {
		this.leadsId = leadsId;
		this.employeesByAssignedToId = employeesByAssignedToId;
		this.employeesByPreAssignedToId = employeesByPreAssignedToId;
		this.source = source;
		this.timeCreated = timeCreated;
		this.clientName = clientName;
		this.email = email;
		this.request = request;
		this.leadsPhoneNumbers = leadsPhoneNumbers;
		this.descriptions = descriptions;
	}

	public int getLeadsId() {
		return this.leadsId;
	}

	public void setLeadsId(int leadsId) {
		this.leadsId = leadsId;
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

	public Source getSource() {
		return this.source;
	}

	public void setSource(Source source) {
		this.source = source;
	}

	public Date getTimeCreated() {
		return this.timeCreated;
	}

	public void setTimeCreated(Date timeCreated) {
		this.timeCreated = timeCreated;
	}

	public String getClientName() {
		return this.clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRequest() {
		return this.request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	public Set getLeadsPhoneNumbers() {
		return this.leadsPhoneNumbers;
	}

	public void setLeadsPhoneNumbers(Set leadsPhoneNumbers) {
		this.leadsPhoneNumbers = leadsPhoneNumbers;
	}

	public Set getDescriptions() {
		return this.descriptions;
	}

	public void setDescriptions(Set descriptions) {
		this.descriptions = descriptions;
	}

}
