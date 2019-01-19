package ctrl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Policy;
import entity.User;
import service.VehicleService;

@Controller
public class VehicleController {

	@Autowired
	private VehicleService service;

	@RequestMapping("getVehicle.do")
	public String getVehicleDetails(@RequestParam("registrationNo") String registrationNo, Map model,
			HttpSession session) {

		User user = (User) session.getAttribute("User");
		if (user == null) {
			if (service.checkRegNo(registrationNo)) {
				model.put("Vehicle", service.getVehicle(registrationNo));
				return "Calculator";
			} else {
				model.put("Prompt", "Vehicle is not registered");
				return "buyquote";
			}
		} 
		if (service.checkRegNo(registrationNo)) {
			String email = user.getEmail();

			List<Policy> list = service.getPolicies();
			Policy policy;
			int index = 0;
			long policyNoNew = 0;
			boolean existing = false;

			for (int i = 0; i < list.size(); i++) {
				
				policy = list.get(i);
				if (policy.getVehicle().getRegistrationNo().equals(registrationNo)) {
					existing = true;
					index = i;
					policyNoNew = policy.getPolicyNo();
					
					break;
				}
			}
			if (existing) {
				policy = list.get(index);
				
				policy.setPolicyNo(policyNoNew);
				model.put("Prompt", "This vehicle is already registered under " + policy.getPolicyType() + " policy by "
						+ policy.getUser().getName());
				return "buyAction";
			} else {
				model.put("Vehicle", service.getVehicle(registrationNo));
				return "vehicleDetails";
			}
		} else {
			model.put("Prompt", "Vehicle is not registered");
			return "buyAction";
		}
	}

}
