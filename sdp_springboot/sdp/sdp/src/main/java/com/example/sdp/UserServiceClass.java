package com.example.sdp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.persistence.EntityManager;
@Service
public class UserServiceClass implements UserService {

	UserRepository ur;	
	@Autowired
	public UserServiceClass(UserRepository ur) {
		super();
		this.ur = ur;
	}
	@Autowired
    private EntityManager entityManager;
	
	
	public boolean existsByUsernameAndPassword(String email, String password) {
        Long count = (Long) entityManager.createQuery(
                        "SELECT COUNT(i) FROM User i WHERE i.email = :email AND i.password = :password")
                .setParameter("email", email)
                .setParameter("password", password)
                .getSingleResult();

        return count > 0;


    }

	@Override
	public void insertUser(User s) {
		// TODO Auto-generated method stub
		ur.save(s);
		
		
	}

}
