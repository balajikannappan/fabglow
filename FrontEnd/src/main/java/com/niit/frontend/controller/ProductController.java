package com.niit.frontend.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.model.Category;
import com.niit.backend.model.ProductInfo;
import com.niit.backend.model.SubCategory;
import com.niit.middleend.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	@RequestMapping("/all/getproducts")
	public ModelAndView getAllProducts() {
		List<ProductInfo> products=productService.getAllProducts();
		return new ModelAndView("productlist","productsvar",products);
	}
	
	@RequestMapping("/all/getproduct/{id}")
	public ModelAndView getProduct(@PathVariable int id) {
		System.out.println("the id is "+id);
		ProductInfo product=productService.getProduct(id);
		return new ModelAndView("productdetails","productdet",product);
		
	}
	
	@RequestMapping("/admin/getproductform")
	public String getProductForm(Model model) {
		List<Category> categories=productService.getAllCategories();
		List<SubCategory> subcats=productService.getAllSubCategories();
		System.out.println(subcats);
		model.addAttribute("categories",categories);
		model.addAttribute("sc",subcats);
		model.addAttribute("newproduct",new ProductInfo());
		//return new ModelAndView("productform","newproduct",new product());
		return "productform";
	}
	
	@RequestMapping(value="/admin/saveproduct")
	public String saveProduct(@ModelAttribute(name="newproduct") ProductInfo productInfo,HttpServletRequest request) {
		productService.saveOrUpdateProduct(productInfo);
		imageLoader(productInfo,request);
		return "redirect:/all/getproducts";
	}
	@RequestMapping(value="/admin/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id) {
		productService.deleteProduct(id);
		return "redirect:/all/getproducts"; 
	}
	@RequestMapping(value="admin/updateproduct/{id}")
	public String updateproductform(@PathVariable int id,Model model) {
		ProductInfo product=productService.getProduct(id); //get the product to pre-fill in the form
		List<Category> categories = productService.getAllCategories(); //get the categories to pre-fill in the select box
		List<SubCategory> subcats=productService.getAllSubCategories();
		System.out.println(subcats);
		model.addAttribute("sc",subcats);
		model.addAttribute("updateproductvar",product);
		model.addAttribute("categories",categories);
		//return new ModelAndView("updateproductform","updateproductvar",product);
		return "updateproductform";
	}
	
	@RequestMapping(value="admin/update")
	public String updateproduct(@ModelAttribute(name="updateproductvar") ProductInfo productInfo,HttpServletRequest request ) {
		productService.saveOrUpdateProduct(productInfo);
		imageLoader(productInfo,request);
		return "redirect:/all/getproducts";
	}
	/*@RequestMapping(value="all/searchbycategory")
	public String searchByCategory(@RequestParam String searchCondition,Model model) {
		model.addAttribute("searchCondition",searchCondition);
		List<ProductInfo> products=
	}*/
	
	public void imageLoader(ProductInfo productInfo,HttpServletRequest request ) {
		MultipartFile productImage = productInfo.getImage();
		if(productImage != null && !productImage.isEmpty()){
			// how to get root director
			String root = request.getServletContext().getRealPath("/");
			System.out.println(root);
			Path path = Paths.get(root+"/WEB-INF/assets/images/"+productInfo.getProductId()+".png");

			try{
				productImage.transferTo(new File(path.toString()));
			}catch(Exception ex ){
				System.out.println("image is not uploaded");
			}
		}
	}
	
	@RequestMapping(value="/all/searchbycategory")
	public String searchByCategory(@RequestParam String searchCondition,Model model){
		if(searchCondition.equals("All")){
			model.addAttribute("searchCondition","");
		}
		else
		model.addAttribute("searchCondition",searchCondition);
		List<ProductInfo> products=productService.getAllProducts();
		model.addAttribute("productsvar",products);
		return "productlist";
	}
}


