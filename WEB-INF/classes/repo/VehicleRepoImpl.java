package repo;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.Policy;
import entity.Vehicle;

@Repository
public class VehicleRepoImpl implements VehicleRepo {
	
	@Autowired
	private SessionFactory factory;

	@Override
	public boolean checkRegNo(String registrationNo) {
		Session session = factory.openSession();
		Vehicle vehicle = (Vehicle) session.get(Vehicle.class, registrationNo);
		if(vehicle!=null)
			return true;
		else
			return false;
	}

	@Override
	public Vehicle getVehicle(String registrationNo) {
		Session session = factory.openSession();
		/*String hql = "from Vehicle where registrationNo=:regNo";
		return session.createQuery(hql).setParameter("regNo", registrationNo);*/
		
		Vehicle vehicle = (Vehicle) session.get(Vehicle.class, registrationNo);
		
		return vehicle;
	}

	@Override
	public List<Policy> getPolicies() {
		Session session = factory.openSession();
		String hql = "from Policy";
		return session.createQuery(hql).list();	}

}
