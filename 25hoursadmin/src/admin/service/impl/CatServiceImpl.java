package admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import admin.dao.CatDAO;
import admin.dao.entity.Category;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class CatServiceImpl {
	@Autowired
	private CatDAO iCatDAO;
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public  void addCategory (Category cat) {
		iCatDAO.addCategory(cat);
	}
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public List<Category> listCat()	{
		return iCatDAO.listCat();
	}
	@Transactional(propagation= Propagation.REQUIRED, readOnly = true)
	public Category getCategory(int catID)	{
		return iCatDAO.getCategory(catID);
	}
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)  
	 public void deleteCategory(Category category) {  
		 iCatDAO.deleteCategory(category);  
	 }
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)  	
	public List<Category> SearchCategoryByName(String name) {
		// TODO Auto-generated method stub
		 return iCatDAO.searchCategorysByName(name);  
	}
	public List<Category> listCategorys(int page, Integer recordsPerPage) {
		// TODO Auto-generated method stub
		return iCatDAO.listCategorys(page, recordsPerPage);  
	}  
}