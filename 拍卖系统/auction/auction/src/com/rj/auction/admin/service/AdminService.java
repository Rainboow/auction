package com.rj.auction.admin.service;

import org.springframework.transaction.annotation.Transactional;

import com.rj.auction.admin.dao.AdminDao;
import com.rj.auction.admin.vo.Admin;
/**
 * 管理员Service层
 * @author Administrator
 *
 */
@Transactional
public class AdminService {
	//注入DAO
	private AdminDao adminDao;
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	//业务层验证管理员登录
	public Admin adminLogin(Admin admin) {
		
		return adminDao.adminLogin(admin);
	}
	
}
