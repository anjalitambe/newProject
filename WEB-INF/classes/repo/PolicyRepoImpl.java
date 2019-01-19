package repo;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.Policy;
import entity.Vehicle;

@Repository
public class PolicyRepoImpl implements PolicyRepo {

	@Autowired
	private SessionFactory factory;

	@Override
	public Policy getPolicy(long policyNo) {
		Session session = factory.openSession();

		Policy policy = (Policy) session.get(Policy.class, policyNo);
		return policy;
	}

	@Override
	public List<Policy> getUserPolicy(String email) {
		Session session = factory.openSession();
		String hql = "from Policy where email=:eid";
		return session.createQuery(hql).setParameter("eid", email).list();
	}

	@Override
	public void buyNewPolicy(Policy policy) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		session.saveOrUpdate(policy);
		txn.commit();

	}

	@Override
	public Policy getClaim(long policyNo) {
		Session session = factory.openSession();

		Policy policy = (Policy) session.get(Policy.class, policyNo);
		return policy;
	}

	@Override
	public boolean setClaimRequest(long policyNo) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			Policy policy = (Policy) session.get(Policy.class, policyNo);
			policy.setClaim_status("Pending");
			session.update(policy);
			txn.commit();
			return true;
		} catch (Exception e) {
			txn.rollback();
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean setClaimStatus(long policyNo, String decision) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			Policy policy = (Policy) session.get(Policy.class, policyNo);
			if (decision.equalsIgnoreCase("Accept"))
				policy.setClaim_status("Accepted");
			else
				policy.setClaim_status("Rejected");
			session.update(policy);
			txn.commit();
			return true;
		} catch (Exception e) {
			txn.rollback();
			e.printStackTrace();
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
	public boolean checkPolicyno(long policyNo) {
		Session session = factory.openSession();
		Policy policy = (Policy) session.get(Policy.class, policyNo);
		if (policy != null)
			return true;
		else
			return false;
	}

	@Override
	public Vehicle getVehicle(String regNo) {
		Session session = factory.openSession();
		Vehicle vehicle = (Vehicle) session.get(Vehicle.class, regNo);

		return vehicle;
	}

}
