package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.Policy;
import entity.Vehicle;
import repo.VehicleRepo;

@Service
public class VehicleServiceImpl implements VehicleService {

	@Autowired
	private VehicleRepo repo;

	@Override
	public boolean checkRegNo(String registrationNo) {
		return repo.checkRegNo(registrationNo);
	}

	@Override
	public Vehicle getVehicle(String registrationNo) {
		return repo.getVehicle(registrationNo);
	}

	@Override
	public List<Policy> getPolicies() {
		return repo.getPolicies();
	}

}
