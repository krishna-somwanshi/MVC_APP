package com.dao;

import com.dto.User;

public interface userDao {
	int insertUser(User user);
	boolean login(User user);
}
