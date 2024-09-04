package com.example.sdp;

import jakarta.persistence.*;

@Entity
@Table(name="user")
public class User {
	
	
	@Id
    @Column(name="id")
    @GeneratedValue(strategy=GenerationType.AUTO )
    Long id;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}


	@Column(name = "email")
	String email;
	@Column(name = "password")
	String password;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
