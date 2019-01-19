package ctrl;

import java.util.Calendar;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bean.ForgetBean;
import bean.PolicyBean;
import bean.LoginBean;
import entity.Policy;
import entity.User;
import entity.Vehicle;
import service.PolicyService;
import service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService service;

	@RequestMapping("login.do")
	public String checkLogin(LoginBean loginBean, Map model, HttpSession session) {
		User user = service.authenticate(loginBean);

		if (user != null) {
			session.setAttribute("User", user);
			String email = user.getEmail();
			String userType = user.getUserType();

			if (userType.equalsIgnoreCase("admin")) {
				List<Policy> policy = service.getPolicy(email);
				model.put("Policy", policy);
				return "adminprofile";
			} else {
				model.put("Policy", service.getUserPolicy(email));
				return "userprofile";
			}
		} else {
			model.put("Prompt", "User Id/Password is incorrect");
			return "home";
		}
	}

	@RequestMapping("forget.do")
	public String forgetPass(ForgetBean forget, Map model, HttpSession session) {
		if (service.validate(forget)) {
			session.setAttribute("Id", forget.getEmail());
			return "change";
		} else {
			model.put("Invalid", "User Id & Movie does not match");
			return "forget";
		}
	}

	@RequestMapping("change.do")
	public String changePass(LoginBean change, Map model, HttpSession session) {
		change.setEmail((String) session.getAttribute("Id"));
		if (service.changePassword(change)) {
			model.put("Prompt", "Password successfully changed");
			return "home";
		} else {
			model.put("Invalid", "Passwords does not match");
			return "change";
		}
	}

	@RequestMapping("register.do")
	public String persist(User user, Map model) {
		if (service.persist(user)) {
			model.put("Prompt", "Thank you for registration");
			return "home";
		} else {
			model.put("Invalid", "User Id already exist");
			return "register";
		}
	}

	@RequestMapping("logout.do")
	public String logout(Map model, HttpSession session) {
		session.invalidate();
		model.put("Prompt", "Logout successfully");
		return "home";
	}

}
