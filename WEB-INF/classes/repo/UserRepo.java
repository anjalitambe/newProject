package repo;

import java.util.List;

import bean.ForgetBean;
import bean.LoginBean;
import bean.PolicyBean;
import entity.Policy;
import entity.User;
import entity.Vehicle;

public interface UserRepo {

	User authenticate(LoginBean login);

	boolean validate(ForgetBean forget);

	boolean changePassword(LoginBean change);

	boolean persist(User user);

	List<Policy> getPolicy(String email);

	List<Policy> getUserPolicy(String email);

	/* List<Policy> getUserPolicy(String email); */

	/* Vehicle getVehicle(String registrationNo); */

	/*
	 * void buyNewPolicy(Policy policy);
	 * 
	 * Policy getClaim(long policyNo);
	 * 
	 * boolean checkRenewTrue(PolicyBean policybean);
	 * 
	 * List<Policy> getPolicy(String email);
	 * 
	 * boolean setClaimStatus(long policyNo, String decision);
	 * 
	 * boolean setClaimRequest(long policyNo);
	 * 
	 * Policy getPolicy(long policyNo);
	 */
	/* boolean checkRegNo(String registrationNo); */

	/* boolean checkPolicyno(long policyNo); */

	/* List<Policy> getPolicies(); */

}
