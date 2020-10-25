package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "car")
public class Car {

	public Car(String make, String model, double price, Integer safetyRating, Integer year, Integer maxSpeed,
			String fuelType) {
		super();
		this.make = make;
		this.model = model;
		this.price = price;
		this.safetyRating = safetyRating;
		this.year = year;
		this.maxSpeed = maxSpeed;
		this.fuelType = fuelType;
	}

	public Car() {
		super();
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String make;

	private String model;

	private double price;

	@Column(name = "safety_rating")
	private Integer safetyRating;

	private Integer year;

	@Column(name = "max_speed")
	private Integer maxSpeed;

	@Column(name = "fuel_type")
	private String fuelType;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Integer getSafetyRating() {
		return safetyRating;
	}

	public void setSafetyRating(Integer safetyRating) {
		this.safetyRating = safetyRating;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getMaxSpeed() {
		return maxSpeed;
	}

	public void setMaxSpeed(Integer maxSpeed) {
		this.maxSpeed = maxSpeed;
	}

	public String getFuelType() {
		return fuelType;
	}

	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fuelType == null) ? 0 : fuelType.hashCode());
		result = prime * result + id;
		result = prime * result + ((make == null) ? 0 : make.hashCode());
		result = prime * result + ((maxSpeed == null) ? 0 : maxSpeed.hashCode());
		result = prime * result + ((model == null) ? 0 : model.hashCode());
		long temp;
		temp = Double.doubleToLongBits(price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((safetyRating == null) ? 0 : safetyRating.hashCode());
		result = prime * result + ((year == null) ? 0 : year.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Car other = (Car) obj;
		if (fuelType == null) {
			if (other.fuelType != null)
				return false;
		} else if (!fuelType.equals(other.fuelType))
			return false;
		if (id != other.id)
			return false;
		if (make == null) {
			if (other.make != null)
				return false;
		} else if (!make.equals(other.make))
			return false;
		if (maxSpeed == null) {
			if (other.maxSpeed != null)
				return false;
		} else if (!maxSpeed.equals(other.maxSpeed))
			return false;
		if (model == null) {
			if (other.model != null)
				return false;
		} else if (!model.equals(other.model))
			return false;
		if (Double.doubleToLongBits(price) != Double.doubleToLongBits(other.price))
			return false;
		if (safetyRating == null) {
			if (other.safetyRating != null)
				return false;
		} else if (!safetyRating.equals(other.safetyRating))
			return false;
		if (year == null) {
			if (other.year != null)
				return false;
		} else if (!year.equals(other.year))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Car [id=" + id + ", make=" + make + ", model=" + model + ", price=" + price + ", safetyRating="
				+ safetyRating + ", year=" + year + ", maxSpeed=" + maxSpeed + ", fuelType=" + fuelType + "]";
	}

}
