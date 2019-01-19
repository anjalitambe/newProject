package entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name="vehicleseguro")
public class Vehicle {
	@Id
	private String registrationNo;
	private String vehicleName;
	private String vehicleType;
	private int modelYear;
	private int vehiclePrice;
	private String vehicleImage;
	
	@ManyToOne
	@JoinColumn(name="email")
	private User user;
	
	@OneToMany(mappedBy="vehicle" , cascade= {CascadeType.ALL}, fetch=FetchType.EAGER )
	@OnDelete(action=OnDeleteAction.CASCADE)
	private Set<Policy> policy;

	public Set<Policy> getPolicy() {
		return policy;
	}

	public void setPolicy(Set<Policy> policy) {
		this.policy = policy;
	}

	public String getRegistrationNo() {
		return registrationNo;
	}

	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}

	public String getVehicleName() {
		return vehicleName;
	}

	public void setVehicleName(String vehicleName) {
		this.vehicleName = vehicleName;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

	public int getModelYear() {
		return modelYear;
	}

	public void setModelYear(int modelYear) {
		this.modelYear = modelYear;
	}

	public String getVehicleImage() {
		return vehicleImage;
	}

	public void setVehicle_image(String vehicle_Image) {
		this.vehicleImage = vehicleImage;
	}

	public int getVehiclePrice() {
		return vehiclePrice;
	}

	public void setVehicle_price(int vehiclePrice) {
		this.vehiclePrice = vehiclePrice;
	}
	


}
