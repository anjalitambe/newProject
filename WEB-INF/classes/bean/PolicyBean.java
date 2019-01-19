package bean;

import java.util.Date;

public class PolicyBean {
	private long policyNo;
	private Date startDate;
	private Date lastDate;
	private long premiumValue;
	private String policyType;
	private String registrationNo;
	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPolicyNo() {
		return policyNo;
	}

	public void setPolicyNo(long policyNo) {
		this.policyNo = policyNo;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getLastDate() {
		return lastDate;
	}

	public void setLastDate(Date lastDate) {
		this.lastDate = lastDate;
	}

	public long getPremiumValue() {
		return premiumValue;
	}

	public void setPremiumValue(long premiumValue) {
		this.premiumValue = premiumValue;
	}

	public String getPolicyType() {
		return policyType;
	}

	public void setPolicyType(String policyType) {
		this.policyType = policyType;
	}

	public String getRegistrationNo() {
		return registrationNo;
	}

	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}

}
