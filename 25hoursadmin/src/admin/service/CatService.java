package admin.service;

import java.util.List;

import admin.dao.entity.Category;

public interface CatService {
	public void addCategory(Category cat);
	public List<Category> listCategorys(int page, Integer recordsPerPage);
	public List<Category> listCat();
	public Category getCategory(int catID);
	public void deleteCategory(Category category);
	public List<Category> SearchCategoryByName(String name);
}
