package admin.dao;

import java.util.List;

import admin.dao.entity.Category;

public interface CatDAO {
	public void addCategory(Category category);
	public List<Category> listCategorys(int page, Integer recordsPerPage);
	public List<Category> listCat();
	public Category getCategory(int catID);
	public void deleteCategory(Category category);
	public List<Category> searchCategorysByName(String name);
}
