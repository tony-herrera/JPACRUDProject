package com.skilldistillery.jpacrud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpacrud.data.CarDAO;
import com.skilldistillery.jpacrud.entities.Car;

@Controller
public class CarController {

	@Autowired
	private CarDAO carDAO;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {

		List<Car> findCars = carDAO.findAll();
		model.addAttribute("cararray", findCars);
		return "index";
	}

	@RequestMapping(path = "getCar.do", method = RequestMethod.GET)
	public String giveCar(Integer cid, Model model) {

		Car car = carDAO.findById(cid);
		model.addAttribute("car", car);
		return "show";
	}

	@RequestMapping(path = "createcar.do", method = RequestMethod.GET)
	public String createCar(Car newcar, Model model) {
		Car car = carDAO.createCar(newcar);
		model.addAttribute("car", car);
		return "newcar";
	}

	@RequestMapping(path = "createcar.do", method = RequestMethod.POST)
	public String updateCar(Car updatecar, Model model) {
		Car car = carDAO.updateCar(updatecar);
		model.addAttribute("car", car);
		return "updatecar";

	}

}