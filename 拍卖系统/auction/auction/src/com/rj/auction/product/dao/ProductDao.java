package com.rj.auction.product.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.rj.auction.product.utils.PageHibernateCallback;
import com.rj.auction.product.vo.Product;

/**
 * 产品DAO层
 * @author Administrator
 *
 */

public class ProductDao extends HibernateDaoSupport{

	//查询所有拍卖品的数量
	public int findCount() {
		String hql = "select count(*) from Product";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list != null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	//分页查询拍卖品
	public List<Product> findByPage(int begin, int limit) {
		String hql = "from Product";
		List<Product> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, null, begin, limit));
		if(list != null && list.size()>0){
			return list;
		}
		return null;
	}

	//DAO层根据id查找拍卖品
	public Product findByPid(Product product) {
		
		return this.getHibernateTemplate().get(Product.class,product.getPid());
	}

	//DAO层删除商品
	public void delete(Product product) {
		this.getHibernateTemplate().delete(product);
	}

	//DAO层更新产品信息
	public void update(Product product) {

		this.getHibernateTemplate().update(product);
	}

	//DAO层添加商品
	public void add(Product product) {

		this.getHibernateTemplate().save(product);
	}

	//根据条件查询商品
	public List<Product> find(String search) {
		String hql = "from Product p where p.title like ?";
		List<Product> list = this.getHibernateTemplate().find(hql,"%"+search+"%");
		System.out.println(list.size());
		if(list.size()>0 && list!= null){
			return list;
			
		}
		
		return null;
	}

	//
	public int findCount(String search) {
		String hql = "select count(*) from Product p where p.title like ?";
		List<Long> list = this.getHibernateTemplate().find(hql,"%"+search+"%");
		if(list.size()>0 && list != null){
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<Product> findByPage(int begin, int limit, String search) {
		String hql = "from Product p where p.title like ? ";
		List<Product> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, new Object[]{"%"+search+"%"} , begin,limit));
		System.out.println(list.size());
		if(list.size()>0 && list != null){
			return list;
		}
		
		return null;
	}
 
}
