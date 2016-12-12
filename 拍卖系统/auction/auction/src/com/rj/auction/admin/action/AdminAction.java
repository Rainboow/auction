package com.rj.auction.admin.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rj.auction.admin.service.AdminService;
import com.rj.auction.admin.vo.Admin;
import com.rj.auction.product.service.ProductService;
import com.rj.auction.product.utils.PageBean;
import com.rj.auction.product.vo.Product;

/**
 * 管理员Action层
 * @author Administrator
 *
 */
public class AdminAction extends ActionSupport implements ModelDriven<Admin> {

	//实现模型驱动
	private Admin admin = new Admin();
	public Admin getModel() {
		// TODO Auto-generated method stub
		return admin;
	}

	//注入AdminService
	private AdminService adminService;
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	//注入ProductService
	private ProductService productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	//接受page参数
	private int page;
	public void setPage(int page) {
		this.page = page;
	}
	
	
	//管理员登录验证
	public String adminLogin(){
		//验证管理员登录
		Admin existAdmin = adminService.adminLogin(admin);
		if(existAdmin==null){
			addActionError("用户名或密码错误！");
			return "adminLoginFail";
		}
		ServletActionContext.getRequest().getSession().setAttribute("existAdmin", existAdmin);
		//分页查询所有拍卖品
		PageBean<Product> pageBean = productService.findProductByPage(page);		
		//将查询结果存入值栈
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "adminLoginSuccess";
	}
	
	
	//分页查询所有拍卖品
	public String findAllByPage(){
		//分页查询所有拍卖品
		PageBean<Product> pageBean = productService.findProductByPage(page);
		//将查询结果存入值栈
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		
		return "findAllByPage";
	}
	//注销用户
	public String quit(){
		//销毁session
		ServletActionContext.getRequest().getSession().invalidate();
		return "quitSuccess";
	}
	
}
