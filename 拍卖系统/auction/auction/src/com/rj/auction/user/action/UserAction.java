package com.rj.auction.user.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rj.auction.product.service.ProductService;
import com.rj.auction.product.utils.PageBean;
import com.rj.auction.product.vo.Product;
import com.rj.auction.user.service.UserService;
import com.rj.auction.user.vo.User;

/**
 * 用户Action
 * @author Administrator
 *
 */
public class UserAction extends ActionSupport implements ModelDriven<User>{
	//实现模型驱动
	private User user = new User();
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	//注入userService
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	//注入productService
	private ProductService productService;		
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	//接收验证码参数
	private String checkcode;	
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
	//接收分页参数
	private int page;
	public void setPage(int page) {
		this.page = page;
	}


	//验证用户登录
	public String userLogin(){
		User existUser = userService.userLogin(user);
		if(existUser == null){
			
			addActionError("用户名或密码错误！");
			return "userLoginFail";
		}
		else{
			String ckeckCode2 = (String) ServletActionContext.getRequest().getSession().getAttribute("checkcode1");		
			if(!checkcode.equalsIgnoreCase(ckeckCode2)){
				addActionError("验证码错误！");
				return "userLoginFail";
			}else{
				ServletActionContext.getRequest().getSession().setAttribute("existUser",existUser);
				//分页查询所有拍卖品
				PageBean<Product> pageBean = productService.findProductByPage(page);
				//将查询结果存入值栈
				ActionContext.getContext().getValueStack().set("pageBean", pageBean);
				return "userLoginSuccess";
			}
		
		}
		
	}
	
	//用户注册页面跳转
	public String toRegister(){
		return "registerPage";
	}
	
	//用户注册
	public String register(){
		userService.save(user);
		return "registerSuccess";
	}
	
	//用户退出登录
	public String quit(){
		//销毁session
		ServletActionContext.getRequest().getSession().invalidate();
		return "quitSuccess";
	}
	
}
