package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Car;

@Transactional
@Service
public class CarDAOImpl implements CarDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Car findById(int id) {

		return em.find(Car.class, id);

	}

	@Override
	public List<Car> findAll() {
		String query = "SELECT c FROM Car c";
		List<Car> results = em.createQuery(query, Car.class).getResultList();

		for (Car result : results) {
			System.out.println(result.getMake());
		}
		return results;
	}

	@Transactional
	@Override
	public Car createCar(Car car) {

		em.persist(car);
		// update the "local" Customer object

		return car;
	}

	@Transactional
	@Override
	public Car updateCar(Car car) {

		em.persist(car);
		em.close();
		return car;
	}

	@Transactional
	@Override
	public boolean destroyCar(int id) {

		Car byecar = em.find(Car.class, id);

		em.remove(byecar);

		boolean carDeleted = !em.contains(byecar);

		em.flush();

		em.close();
		return carDeleted;
	}

}