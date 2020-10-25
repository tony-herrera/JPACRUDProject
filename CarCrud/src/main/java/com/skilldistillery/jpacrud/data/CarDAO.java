package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Car;

public interface CarDAO {

	Car findById(int id);

	List<Car> findAll();

	Car createCar(Car car);

	Car updateCar(Car car);

	boolean destroyCar(int id);
}
