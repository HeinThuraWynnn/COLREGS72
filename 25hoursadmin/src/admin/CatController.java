package admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.CatBean;
import admin.dao.entity.Category;
import admin.service.CatService;

@Controller
public class CatController {
	@Autowired(required = true)
	private CatService iCatService;
	@RequestMapping(value="/index")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveCategory(@ModelAttribute("categoryBean") CatBean categoryBean, BindingResult result ){
		Category category = prepareModel(categoryBean);
		//System.out.println("category catID===" + category.getCatID());
		iCatService.addCategory(category);
		return "redirect:add.do";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editCategory(@ModelAttribute("categoryBean")CatBean categoryBean, BindingResult result,ModelMap model) {
		CatBean catBean = prepareCategoryBean(iCatService.getCategory(categoryBean.getCatID()));
		categoryBean.setCategory(catBean);
		model.addAttribute("categoryBean", categoryBean);
		return "addCat";
	}
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchCategory(@ModelAttribute("categoryBean")CatBean categoryBean, BindingResult result,ModelMap model) {
		List<CatBean> categorys = prepareListofBean(iCatService.SearchCategoryByName(categoryBean.getCatName()));
		//System.out.println("search result" +employees.size());
		categoryBean.setCatlist(categorys);
		model.addAttribute("categoryBean", categoryBean);
		return "addCat";
	}
	
	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public String displayCategorys(@RequestParam("page") String page, @ModelAttribute("categoryBean") CatBean categoryBean, BindingResult result,
			ModelMap model) {
		if (page !=null) {
		Integer pageNo = Integer.parseInt(page);
		Integer recordsPerPage=2;
		List<CatBean> categorys = prepareListofBean(iCatService.listCategorys((pageNo-1)*recordsPerPage,
                recordsPerPage));
		List<CatBean> cats =prepareListofBean(iCatService.listCat());
		 Integer noOfRecords = cats.size();
	     Integer noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
	     categoryBean.setCatlist(categorys);
	     categoryBean.setCurrentPage(pageNo);
	     categoryBean.setNoOfpages(noOfPages);
	          
		}
		model.addAttribute("categoryBean", categoryBean);
		return "listCat";
	}
	private CatBean prepareCategoryBean(Category category) {
		CatBean bean = new CatBean();
		bean.setCatName(category.getCatName());
		bean.setCatID(category.getCatID());
		return bean;
	}
	private Category prepareModel(CatBean categoryBean) {
		Category category = new Category();
		category.setCatName(categoryBean.getCatName());
		category.setCatID(categoryBean.getCatID());
		categoryBean.setCatID(null);
		return category;
	}
	private List<CatBean> prepareListofBean(List<Category> categorys) {
		List<CatBean> beans = null;
		if (categorys != null && !categorys.isEmpty()) {
			beans = new ArrayList<CatBean>();
			CatBean bean = null;
			for (Category category : categorys) {
				bean = new CatBean();
				bean.setCatName(category.getCatName());
				bean.setCatID(category.getCatID());
				beans.add(bean);
			}
		}
		return beans;
	}
}
