package com.RealEstate.www._MySQL_DB_Entities;
// Generated May 11, 2022, 11:53:45 PM by Hibernate Tools 5.6.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Jobs generated by hbm2java
 */
public class Jobs implements java.io.Serializable {

	private int jobsId;
	private String jobTitle;
	private Set employeeses = new HashSet(0);
	private Set jobHistories = new HashSet(0);

	public Jobs() {
	}

	public Jobs(int jobsId, String jobTitle) {
		this.jobsId = jobsId;
		this.jobTitle = jobTitle;
	}

	public Jobs(int jobsId, String jobTitle, Set employeeses, Set jobHistories) {
		this.jobsId = jobsId;
		this.jobTitle = jobTitle;
		this.employeeses = employeeses;
		this.jobHistories = jobHistories;
	}

	public int getJobsId() {
		return this.jobsId;
	}

	public void setJobsId(int jobsId) {
		this.jobsId = jobsId;
	}

	public String getJobTitle() {
		return this.jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public Set getEmployeeses() {
		return this.employeeses;
	}

	public void setEmployeeses(Set employeeses) {
		this.employeeses = employeeses;
	}

	public Set getJobHistories() {
		return this.jobHistories;
	}

	public void setJobHistories(Set jobHistories) {
		this.jobHistories = jobHistories;
	}

}