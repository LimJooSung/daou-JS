package com.ppurio.biz.sales.integration.web.customer.vo;

public class CustomerMember {
	private String approvedDate;
	private String memId;
	private String serviceCategory;
	private String companyName;
	private String memType;
	private String payType;
	private String shippingStat;
	private String deptInCharge;
	private String personInCharge;
	private String adminAccount;
	private String shippingQuantity;
	
	public CustomerMember(String approvedDate, String memId, String serviceCategory, String companyName, String memType,
			String payType, String shippingStat, String deptInCharge, String personInCharge, String adminAccount,
			String shippingQuantity) {
		super();
		this.approvedDate = approvedDate;
		this.memId = memId;
		this.serviceCategory = serviceCategory;
		this.companyName = companyName;
		this.memType = memType;
		this.payType = payType;
		this.shippingStat = shippingStat;
		this.deptInCharge = deptInCharge;
		this.personInCharge = personInCharge;
		this.adminAccount = adminAccount;
		this.shippingQuantity = shippingQuantity;
	}
	
	public String getApprovedDate() {
		return approvedDate;
	}
	public void setApprovedDate(String approvedDate) {
		this.approvedDate = approvedDate;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getServiceCategory() {
		return serviceCategory;
	}
	public void setServiceCategory(String serviceCategory) {
		this.serviceCategory = serviceCategory;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getMemType() {
		return memType;
	}
	public void setMemType(String memType) {
		this.memType = memType;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public String getShippingStat() {
		return shippingStat;
	}
	public void setShippingStat(String shippingStat) {
		this.shippingStat = shippingStat;
	}
	public String getDeptInCharge() {
		return deptInCharge;
	}
	public void setDeptInCharge(String deptInCharge) {
		this.deptInCharge = deptInCharge;
	}
	public String getPersonInCharge() {
		return personInCharge;
	}
	public void setPersonInCharge(String personInCharge) {
		this.personInCharge = personInCharge;
	}
	public String getAdminAccount() {
		return adminAccount;
	}
	public void setAdminAccount(String adminAccount) {
		this.adminAccount = adminAccount;
	}
	public String getShippingQuantity() {
		return shippingQuantity;
	}
	public void setShippingQuantity(String shippingQuantity) {
		this.shippingQuantity = shippingQuantity;
	}
	
//	@Override
//	public String toString() {
//		return "[" + approvedDate + ", " + memId + ", " + serviceCategory + "]";
//	}
}
