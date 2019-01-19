package repo;

import java.util.List;

import entity.Policy;
import entity.Vehicle;

public interface PolicyRepo {

	Policy getPolicy(long policyNo);

	List<Policy> getUserPolicy(String email);

	void buyNewPolicy(Policy policy);

	Policy getClaim(long policyNo);

	boolean setClaimRequest(long policyNo);

	boolean setClaimStatus(long policyNo, String decision);

	List<Policy> getPolicy(String email);

	boolean checkPolicyno(long policyNo);

	Vehicle getVehicle(String regNo);

}
