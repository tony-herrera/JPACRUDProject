package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class CarTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Car car;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {

		emf = Persistence.createEntityManagerFactory("CarPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {

		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {

		em = emf.createEntityManager();
		car = em.find(Car.class, 1);

	}

	@AfterEach
	void tearDown() throws Exception {
		car = null;
	}

	@Test
	void test_Car_entity_mapping() {
		assertNotNull(car);
		assertEquals("Model S", car.getModel());
		assertEquals(70000, car.getPrice());
		assertEquals(5, car.getSafetyRating());
		assertEquals(155, car.getMaxSpeed());
		assertEquals("electric", car.getFuelType());
		assertEquals("new", car.getMake());

	}

}
