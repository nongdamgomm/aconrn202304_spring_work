package com.han.spring05.users.dao;

import com.han.spring05.users.dto.UsersDto;

public interface UsersDao {
	public void insert(UsersDto dto);
	public boolean isExist(String inputId);
	public UsersDto getData(String id);
	public void updatePwd(UsersDto dto);
	public void update(UsersDto dto);
	public void delete(String id);
}
