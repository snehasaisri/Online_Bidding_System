package com.example.sdp;


public interface UserService {
	public void insertUser(User s);
	public boolean existsByUsernameAndPassword(String username, String password);
}

