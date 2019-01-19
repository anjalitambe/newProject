package repo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bean.ForgetBean;
import bean.LoginBean;
import bean.PolicyBean;
import entity.Policy;
import entity.User;
//import repo.JdbcVehiclRepository.VehicleMapper;
import entity.Vehicle;

@Repository
public class UserRepoImpl implements UserRepo {

	@Autowired
	private SessionFactory factory;

	@Override
	public User authenticate(LoginBean login) {
		Session session = factory.openSession();
		User user = (User) session.get(User.class, login.getEmail());
		if (user != null && user.getPassword().equals(login.getPassword()))
			return user;
		else
			return null;
	}

	@Override
	public boolean validate(ForgetBean forget) {
		Session session = factory.openSession();
		User user = (User) session.get(User.class, forget.getEmail());
		if (user != null && user.getMovie().equals(forget.getMovie()))
			return true;
		else
			return false;
	}

	@Override
	public boolean changePassword(LoginBean change) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			User user = (User) session.get(User.class, change.getEmail());
			user.setPassword(change.getPassword());
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

	@Override
	public boolean persist(User user) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			session.save(user);
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

	@Override
	public List<Policy> getPolicy(String email) {
		Session session = factory.openSession();
		String hql = "from Policy";
		return session.createQuery(hql).list();
	}

	@Override
	public List<Policy> getUserPolicy(String email) {
		Session session = factory.openSession();
		String hql = "from Policy where email=:eid";
		return session.createQuery(hql).setParameter("eid", email).list();
	}

	/*
	 * @Override public List<Policy> getUserPolicy(String email) { Session session =
	 * factory.openSession(); String hql = "from Policy where email=:eid"; return
	 * session.createQuery(hql).setParameter("eid", email).list(); }
	 */

	/*
	 * @Override public Vehicle getVehicle(String registrationNo) { Session session
	 * = factory.openSession(); String hql =
	 * "from Vehicle where registrationNo=:regNo"; return
	 * session.createQuery(hql).setParameter("regNo", registrationNo);
	 * 
	 * Vehicle vehicle = (Vehicle) session.get(Vehicle.class, registrationNo);
	 * 
	 * return vehicle;
	 * 
	 * }
	 */
	/*
	 * @Override public void buyNewPolicy(Policy policy) { Session session =
	 * factory.openSession(); Transaction txn = session.beginTransaction();
	 * session.saveOrUpdate(policy); txn.commit(); }
	 */

	/*
	 * @Override public Policy getClaim(long policyNo) { Session session =
	 * factory.openSession();
	 * 
	 * Policy policy = (Policy) session.get(Policy.class, policyNo); return policy;
	 * 
	 * }
	 */

	/*
	 * @Override public boolean checkRenewTrue(PolicyBean policybean) { Session
	 * session = factory.openSession(); //Policy
	 * policy=(Policy)session.get(Policy.class, PolicyNo()); Vehicle
	 * vehicle=(Vehicle)session.get(Vehicle.class, policybean.getRegistrationNo());
	 * if(vehicle!=null&&vehicle.getRegistrationNo().equals(policybean.
	 * getRegistrationNo())) return true;
	 * 
	 * else return false; }
	 */

	/*
	 * @Override public List<Policy> getPolicy(String email) { Session session =
	 * factory.openSession(); String hql = "from Policy"; return
	 * session.createQuery(hql).list(); }
	 */

	/*
	 * @Override public boolean setClaimStatus(long policyNo, String decision) {
	 * Session session = factory.openSession(); Transaction txn =
	 * session.beginTransaction(); try { Policy policy=
	 * (Policy)session.get(Policy.class, policyNo);
	 * if(decision.equalsIgnoreCase("Accept")) policy.setClaim_status("Accepted");
	 * else policy.setClaim_status("Rejected"); session.update(policy);
	 * txn.commit(); return true; } catch (Exception e) { txn.rollback();
	 * e.printStackTrace(); return false; }
	 * 
	 * }
	 */

	/*
	 * @Override public boolean setClaimRequest(long policyNo) { Session session =
	 * factory.openSession(); Transaction txn = session.beginTransaction(); try {
	 * Policy policy= (Policy)session.get(Policy.class, policyNo);
	 * policy.setClaim_status("Pending"); session.update(policy); txn.commit();
	 * return true; } catch (Exception e) { txn.rollback(); e.printStackTrace();
	 * return false; } }
	 */
	/*
	 * @Override public Policy getPolicy(long policyNo) { Session session =
	 * factory.openSession();
	 * 
	 * Policy policy = (Policy) session.get(Policy.class, policyNo);
	 * 
	 * return policy; }
	 */

	/*
	 * @Override public boolean checkRegNo(String registrationNo) { Session session
	 * = factory.openSession(); Vehicle vehicle = (Vehicle)
	 * session.get(Vehicle.class, registrationNo); if(vehicle!=null) return true;
	 * else return false; }
	 */

	/*
	 * @Override public boolean checkPolicyno(long policyNo) { Session session =
	 * factory.openSession(); Policy policy = (Policy) session.get(Policy.class,
	 * policyNo); if(policy!=null) return true; else return false; }
	 */

	/*
	 * @Override public List<Policy> getPolicies() { Session session =
	 * factory.openSession(); String hql = "from Policy"; return
	 * session.createQuery(hql).list(); }
	 */

}
