package com.rj.auction.admin.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.rj.auction.admin.vo.Admin;

/**
 * 管理员DAO层
 * @author Administrator
 *
 */
public class AdminDao extends HibernateDaoSupport{

	//DAO层管理员验证登录
	public Admin adminLogin(Admin admin) {
		String hql = "from Admin a where a.name = ? and a.password = ?";
		List<Admin> list = this.getHibernateTemplate().find(hql,admin.getName(),admin.getPassword());
		if(list.size()>0 && list != null){
			return list.get(0);
		}
		
		return null;
	}
	

}
