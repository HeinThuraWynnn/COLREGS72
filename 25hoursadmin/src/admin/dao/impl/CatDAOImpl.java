package admin.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.dao.CatDAO;
import admin.dao.entity.Category;

@Repository
public class CatDAOImpl implements CatDAO{
	private HibernateTemplate hibernateTemplate;
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory){
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
	}
	
	public void addCategory(Category category) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.save(category);
	}
	
	@Transactional
	public List<Category> listCat(){
		@SuppressWarnings("unchecked")
		List<Category> catlist = hibernateTemplate.find("from Category");
		return catlist;
	}

	@Transactional
	public Category getCategory(int catID) {
		// TODO Auto-generated method stub
		return (Category) hibernateTemplate.get(Category.class, catID);
	}
	@Transactional
	public void deleteCategory(Category category) {
		// TODO Auto-generated method stub
		hibernateTemplate.delete(category);
	}

	@Transactional
	public List<Category> searchCategorysByName(String name) {
		// TODO Auto-generated method stub
		String searchStr = '%'+name+'%';
		String hql = "from Category c where c.catName like ? ";
		@SuppressWarnings("unchecked")
		List<Category> cats = hibernateTemplate.find(hql, searchStr);	
				return cats;
	}
	@Override
	public List<Category> listCategorys(int page, Integer recordsPerPage) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Category> cats = hibernateTemplate.findByCriteria(DetachedCriteria.forClass(Category.class), page, recordsPerPage);
		return cats;
	}
}
