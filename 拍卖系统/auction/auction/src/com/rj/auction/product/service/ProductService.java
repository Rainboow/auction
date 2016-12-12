package com.rj.auction.product.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.rj.auction.product.dao.ProductDao;
import com.rj.auction.product.utils.PageBean;
import com.rj.auction.product.vo.Product;

/**
 * 产品业务层
 * @author Administrator
 *
 */
@Transactional
public class ProductService {

	//注入DAO层对象
	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	//分页查询所有拍卖品
	public PageBean<Product> findProductByPage(int page) {
		PageBean<Product> pageBean = new PageBean<Product>();
		//设置当前页数
		pageBean.setPage(page);
		//设置每页记录数
		int limit = 8;
		//设置总记录数
		int totalCount = 0;
		totalCount = productDao.findCount();
		pageBean.setTotalCount(totalCount);
		//设置总页数
		int totalPage = 0;
		if(totalCount % limit == 0){
			totalPage = totalCount/limit;
		}else{
			totalPage = totalCount/limit+1;
		}
		pageBean.setTotalPage(totalPage);
		//每页显示的数据集合
		//从哪开始
		int begin = (page - 1)*limit;
		List<Product> list = productDao.findByPage(begin,limit);
		pageBean.setList(list);
		return pageBean;
	}

	//业务层根据id查找拍卖品
	public Product findByPid(Product product) {
		
		return productDao.findByPid(product);
	}

	//业务层删除商品方法
	public void delete(Product product) {
		productDao.delete(product);
	}

	//业务层更新产品信息
	public void update(Product product) {
		productDao.update(product);
	}

	//业务层添加商品
	public void add(Product product) {

		productDao.add(product);
	}

	//业务层条件查询商品	
	public PageBean<Product> find(String search, int page) {
		PageBean<Product> pageBean = new PageBean<Product>();
		//设置当前页数
		pageBean.setPage(page);
		//设置每页记录数
		int limit = 8;
		//设置总记录数
		int totalCount = 0;
		totalCount = productDao.findCount(search);
		pageBean.setTotalCount(totalCount);
		//设置总页数
		int totalPage = 0;
		if(totalCount % limit == 0){
			totalPage = totalCount/limit;
		}else{
			totalPage = totalCount/limit+1;
		}
		pageBean.setTotalPage(totalPage);
		//每页显示的数据集合
		//从哪开始
		int begin = (page - 1)*limit;
		List<Product> list = productDao.findByPage(begin,limit,search);
		pageBean.setList(list);
		return pageBean;
	}
	
}
