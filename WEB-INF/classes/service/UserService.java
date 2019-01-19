package service;

import java.util.List;

import bean.ForgetBean;
import bean.LoginBean;
import bean.PolicyBean;
import entity.Policy;
import entity.User;
import entity.Vehicle;

public interface UserService {
	User authenticate(LoginBean login);

	boolean validate(ForgetBean forget);

	boolean changePassword(LoginBean change);

	boolean persist(User user);

	List<Policy> getPolicy(String email);

	List<Policy> getUserPolicy(String email);
}
