package com.rj.auction.user.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.rj.auction.user.vo.User;

public class UserDao extends HibernateDaoSupport{

	//DAO层用户验证登录
	public User userLogin(User user) {
		String hql = "from User u where u.name = ? and u.password = ?";
		List<User> list = this.getHibernateTemplate().find(hql,user.getName(),user.getPassword());
		if(list.size()>0 && list != null){
			return list.get(0);
		}
		return null;
	}

	//DAO层注册用户
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

}
