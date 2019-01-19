package service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.Policy;
import entity.Vehicle;
import repo.PolicyRepo;

@Service
public class PolicyServiceImpl implements PolicyService {

	@Autowired
	private PolicyRepo repo;

	@Override
	public Policy getPolicy(long policyNo) {
		return repo.getPolicy(policyNo);
	}

	@Override
	public List<Policy> getUserPolicy(String email) {
		return repo.getUserPolicy(email);
	}

	@Override
	public void buyNewPolicy(Policy policy) {
		Calendar cal = Calendar.getInstance();
		Date today = cal.getTime();
		cal.add(Calendar.YEAR, 1); // to get previous year add -1
		Date nextYear = cal.getTime();

		policy.setStartDate(today);
		policy.setLastDate(nextYear);

		repo.buyNewPolicy(policy);

	}

	@Override
	public Policy getClaim(long policyNo) {
		return repo.getClaim(policyNo);
	}

	@Override
	public boolean setclaimRequest(long policyNo) {
		return repo.setClaimRequest(policyNo);
	}

	@Override
	public boolean setClaimStatus(long policyNo, String decision) {
		return repo.setClaimStatus(policyNo, decision);
	}

	@Override
	public List<Policy> getPolicy(String email) {
		return repo.getPolicy(email);
	}

	@Override
	public boolean checkPolicyno(long policyNo) {
		return repo.checkPolicyno(policyNo);
	}

	@Override
	public Vehicle getVehicle(String regNo) {
		return repo.getVehicle(regNo);
	}

}
