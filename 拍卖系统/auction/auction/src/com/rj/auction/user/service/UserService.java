package com.rj.auction.user.service;

import org.springframework.transaction.annotation.Transactional;

import com.rj.auction.user.dao.UserDao;
import com.rj.auction.user.vo.User;

@Transactional
public class UserService {
	//注入userDao
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	//业务层用户验证登录
	public User userLogin(User user) {
		
		return userDao.userLogin(user);
	}

	//业务层注册用户
	public void save(User user) {
		userDao.save(user);
	}
	

}
