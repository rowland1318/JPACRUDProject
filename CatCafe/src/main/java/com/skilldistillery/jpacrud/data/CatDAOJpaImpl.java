package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Cat;

@Service
@Transactional
public class CatDAOJpaImpl implements CatDAO {
	
	@PersistenceContext
	EntityManager em;
	
	@Override
	public Cat findById(int id) {
		return em.find(Cat.class, id);
	}

	@Override
	public List<Cat> findAll() {
		String jpql = "SELECT c FROM Cat c";
		return em.createQuery(jpql, Cat.class).getResultList();
	}

}
