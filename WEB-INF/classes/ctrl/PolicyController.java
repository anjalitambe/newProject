package ctrl;

import java.util.List;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bean.LoginBean;
import bean.PolicyBean;
import entity.Policy;
import entity.User;
import entity.Vehicle;
import service.PolicyService;
import service.VehicleService;

@Controller
public class PolicyController {

	@Autowired
	private PolicyService service;

	@RequestMapping(value = "renew.do")
	public String renewPolicy(@RequestParam("policyNo") long policyNo, Map model, HttpSession session) {

		Policy policy = service.getPolicy(policyNo);

		Vehicle vehicle = policy.getVehicle();
		String regNo = vehicle.getRegistrationNo();
		model.put("Vehicle", service.getVehicle(regNo));
		return "vehicleDetails";

	}

	@RequestMapping(value = "buy.do")
	public String checkPolicy(PolicyBean policyBean, LoginBean loginBean, Map model, HttpSession session) {
		User user = (User) session.getAttribute("User");

		String email = user.getEmail();
		PolicyBean bean = (PolicyBean) session.getAttribute("Policy");

		List<Policy> list = service.getUserPolicy(email);
		long policyNo = 0, policyNoNew = 0;
		int index = 0;
		boolean existing = false;

		Policy policy;

		for (int i = 0; i < list.size(); i++) {
			
			policy = list.get(i);
			if (policy.getVehicle().getRegistrationNo().equals(bean.getRegistrationNo())) {

				existing = true;
				index = i;
				policyNoNew = policy.getPolicyNo();
				
				break;
			}
		}

		if (existing) {
			policy = list.get(index);
			policy.setPolicyNo(policyNoNew);
			policy.setPolicyType(bean.getPolicyType());
			policy.setPremiumValue((Long) bean.getPremiumValue());
			policy.setUser(user);

			service.buyNewPolicy(policy);
		} else {
			policy = new Policy();
			Vehicle vehicle = service.getVehicle(bean.getRegistrationNo());
			policy.setVehicle(vehicle);
			policy.setPolicyType(bean.getPolicyType());
			policy.setPremiumValue((Long) bean.getPremiumValue());
			policy.setUser(user);

			service.buyNewPolicy(policy);

		}

		model.put("Policy", service.getUserPolicy(user.getEmail()));
		return "policies";

	}

	@RequestMapping("getPolicies.do")
	public String getPolicies(Map model, HttpSession session) {
		User user = (User) session.getAttribute("User");
		model.put("Policy", service.getUserPolicy(user.getEmail()));
		return "policies";

	}

	@RequestMapping("claim.do")
	public String checkClaim(@RequestParam("policyNo") long policyNo, Map model, HttpSession session) {

		
		model.put("Policy", service.getClaim(policyNo));

		return "claim";
	}

	@RequestMapping("token.do")
	public String claimRequest(@RequestParam("policyNo") long policyNo, Map model, HttpSession session) {
		User user = (User) session.getAttribute("User");
		if (service.setclaimRequest(policyNo)) {
			model.put("Policy", service.getUserPolicy(user.getEmail()));
			return "policies";
		} else
			return "claim";
	}

	@RequestMapping("approve.do")
	public String approveclaim(@RequestParam("policyNo") long policyNo, @RequestParam("radiodecision") String decision,
			Map model, HttpSession session) {
		User user = (User) session.getAttribute("User");
		if (service.setClaimStatus(policyNo, decision)) {
			List<Policy> policy = service.getPolicy(user.getEmail());
			model.put("Policy", policy);
			return "adminprofile";
		} else
			return "claim";
	}

	@RequestMapping("approveclaim.do")
	public String checkPolicy(@RequestParam("policyNo") long policyNo, Map model, HttpSession session) {

		model.put("Policy", service.getClaim(policyNo));

		return "approveclaim";
	}

	@RequestMapping("getPolicy.do")
	public String getPolicyDetails(@RequestParam("policyNo") long policyNo, Map model, HttpSession session) {

		if (service.checkPolicyno(policyNo)) {
			model.put("Policy", service.getPolicy(policyNo));
			return "policyDetails";
		} else {
			model.put("Prompt", "Please Enter Valid policy No.");
			return "renew";
		}

	}

	@RequestMapping("policyPayment.do")
	public String payment(PolicyBean policyBean, HttpSession session) {
		session.setAttribute("Policy", policyBean);
		return "payment";
	}

}
