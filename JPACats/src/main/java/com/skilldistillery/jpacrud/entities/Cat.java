package com.skilldistillery.jpacrud.entities;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cat {

	// F I E L D S
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String color;
	private String breed;
	private int age;
	@Enumerated(EnumType.STRING)
	private Gender gender;
	
	//C O N S T R U C T O R S

	public Cat() {
		super();
	}

	public Cat(int id, String name, String color, String breed, int age, Gender gender) {
		super();
		this.id = id;
		this.name = name;
		this.color = color;
		this.breed = breed;
		this.age = age;
		this.gender = gender;
	}
	
	
	// G E T T E R S    A N D    S E T T E R S 





	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Cat [id=").append(id).append(", name=").append(name).append(", color=").append(color)
				.append(", breed=").append(breed).append(", age=").append(age).append(", gender=").append(gender)
				.append("]");
		return builder.toString();
	}

	
	
}
