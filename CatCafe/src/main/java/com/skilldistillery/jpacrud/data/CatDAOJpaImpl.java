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

	@Override
	public void addCat(Cat cat) {
		System.out.println("Adding New Cat to the Cat Cafe");
		em.persist(cat);
		em.flush();
		System.out.println("Cat has Been Added");
		
	}

	@Override
	public void deleteCat(Cat cat) {
		System.out.println("Deleting " + cat);
		em.remove(cat);
		em.flush();
	}

	@Override
	public void updateCat(Cat cat, int id) {
		String jpql = "SELECT c FROM Cat c WHERE c.id = :bindId";
		List<Cat> updating = em.createQuery(jpql, Cat.class).setParameter("bindId", id).getResultList();
		updating.get(0).setName(cat.getName());
		updating.get(0).setColor(cat.getColor());
		updating.get(0).setBreed(cat.getBreed());
		updating.get(0).setAge(cat.getAge());
		updating.get(0).setGender(cat.getGender());
		em.flush();
	}

}
