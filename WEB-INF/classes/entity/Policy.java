package entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "policyseguro")
@SequenceGenerator(name = "poliSeq", sequenceName = "sequence_policy")
public class Policy {

	@Id
	@GeneratedValue(generator = "poliSeq")
	private long policyNo;
	private String policyType;
	private Date startDate;
	private Date lastDate;
	private double premiumValue;
	@Column(name = "claim_status", insertable = false, updatable = true, nullable = false, columnDefinition = "varchar2(40) default 'Not Applied'")
	private String claim_status;

	public String getClaim_status() {
		return claim_status;
	}

	public void setClaim_status(String claim_status) {
		this.claim_status = claim_status;
	}

	@OneToOne
	@JoinColumn(name = "registrationNo")
	private Vehicle vehicle;

	@ManyToOne
	@JoinColumn(name = "email")
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public long getPolicyNo() {
		return policyNo;
	}

	public void setPolicyNo(long policyNo) {
		this.policyNo = policyNo;
	}

	public Vehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
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

	public double getPremiumValue() {
		return premiumValue;
	}

	public void setPremiumValue(double premiumValue) {
		this.premiumValue = premiumValue;
	}

	public String getPolicyType() {
		return policyType;
	}

	public void setPolicyType(String policyType) {
		this.policyType = policyType;
	}

}
