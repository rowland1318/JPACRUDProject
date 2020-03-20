package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Cat;

public interface CatDAO {
	
	Cat findById(int id);
	List<Cat> findAll();
}
