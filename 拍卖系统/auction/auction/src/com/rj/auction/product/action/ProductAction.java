package com.rj.auction.product.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rj.auction.product.service.ProductService;
import com.rj.auction.product.utils.PageBean;
import com.rj.auction.product.vo.Product;

/**
 * 产品Action层
 * @author Administrator
 *
 */

public class ProductAction extends ActionSupport implements ModelDriven<Product>{

	//实现模型驱动
	private Product product = new Product();
	public Product getModel() {
		// TODO Auto-generated method stub
		return product;
	}

	//注入业务层对象
	private ProductService productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	//接收page参数
	private int page;	
	public void setPage(int page) {
		this.page = page;
	}

	//struts2文件上传需要接受的参数
	private File upload; //上传的文件
	private String uploadFileName; //接收文件上传的文件名
	private String uploadContextType;
	
	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setUploadContextType(String uploadContextType) {
		this.uploadContextType = uploadContextType;
	}
	
	//接收查询条件参数
	private String search;
	public void setSearch(String search) {
		this.search = search;
	}

	//分页查询所有拍卖品
	public String findAllByPage(){
		//分页查询所有拍卖品
		PageBean<Product> pageBean = productService.findProductByPage(page);
		//将查询结果存入值栈
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		
		return "findAllByPage";
	}
	
	//跳转到商品列表
	public String toList(){
		return "list";
	}
	
	
	//根据id查找拍卖品
	public String findByPid(){
		product = productService.findByPid(product);
		
		return "findByPid";
	}
	
	//
	public String findXiangqingByPid(){
product = productService.findByPid(product);
		
		return "findXiangqingByPid";
	}
	
	//根据id删除产品
	public String delete(){
		productService.delete(product);
		return "deleteSucess";
	}
	
	//跳转编辑页面
	public String toEidt(){
		product = productService.findByPid(product);
		return "toEdit";
	}
	
	//更新产品信息
	public String update() throws Exception{
		if(upload != null){
			//获得文件上传的磁盘绝对路径
			String realPath = ServletActionContext.getServletContext().getRealPath("/products");
			//创建一个文件
			File diskFile = new File(realPath+"//"+uploadFileName);
			//上传文件
			FileUtils.copyFile(upload, diskFile);
			product.setImage("products/"+uploadFileName);
			}
		//更新产品
		productService.update(product);
		return "updateSuccess";
	}
	
	//跳转到添加页面
	public String toAdd(){	
			//页面跳转
			return "toAdd";
	}
	
	
	//添加新商品
	public String add() throws Exception{
		if(upload != null){
			//获得文件上传的磁盘绝对路径
			String realPath = ServletActionContext.getServletContext()
				.getRealPath("/products");
			//创建一个文件
			File diskFile = new File(realPath+"//"+uploadFileName);
			//上传文件
			FileUtils.copyFile(upload, diskFile);
			product.setImage("products/"+uploadFileName);
			}
			//将数据保存到数据库
			productService.add(product);
			return "addSuccess";
	}
	
	//条件查询商品
	public String find(){
		PageBean<Product> pageBean =  productService.find(search,page);
		ActionContext.getContext().getValueStack().set("pageBean",pageBean);
		return "findSuccess";
	}
}
