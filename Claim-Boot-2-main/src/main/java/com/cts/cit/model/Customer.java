package com.cts.cit.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.stereotype.Component;

@Component
public class Customer {
	@NotBlank(message="")
	@Pattern(regexp="^[789][0-9]{9}",message="Member Id should be 10 digit Mobile number and starting with 7/8/9")
	String custId;
	
	@NotBlank(message="Customer name is required")
	String custName;
	
    @NotBlank(message="password is required")
	String password;
	
	public Customer() {
		super();
	}

	public Customer(String custId, String custName,
			String password) {
		super();
		this.custId = custId;
		this.custName = custName;
		this.password = password;
	}

	public String getCustId() {
		return custId;
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Customer [custId=" + custId + ", custName=" + custName + ", password=" + password + "]";
	}
	
	
	
}
