package com.service;

import com.dto.User;

public interface UserService {
	public int registerUser(User user);
	public boolean login(User user); 
}
