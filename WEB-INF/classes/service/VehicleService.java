package service;

import java.util.List;

import entity.Policy;
import entity.Vehicle;

public interface VehicleService {

	boolean checkRegNo(String registrationNo);

	Vehicle getVehicle(String registrationNo);

	List<Policy> getPolicies();

}
