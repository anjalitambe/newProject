package repo;

import java.util.List;

import entity.Policy;
import entity.Vehicle;

public interface VehicleRepo {

	boolean checkRegNo(String registrationNo);

	Vehicle getVehicle(String registrationNo);

	List<Policy> getPolicies();

}
