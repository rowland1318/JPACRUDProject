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

class CatTest {

	private static EntityManagerFactory emf; 
	private EntityManager em;
	private Cat cat;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("CatPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		cat = em.find(Cat.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		cat =null;
	}

	@Test
	void test_Cat_entity_Mapping() {
	assertNotNull(cat);
	assertEquals("Sylvester", cat.getName());
	assertEquals(4, cat.getAge());
	assertEquals("Tuxedo", cat.getBreed());
	assertEquals("M", cat.getGender());
	assertEquals("Black", cat.getColor());
	}

}
