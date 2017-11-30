package com.bear.cakeonline.cake.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bear.cakeonline.cake.service.CakeServiceImpl;
import com.bear.cakeonline.entity.Cake;
import com.bear.cakeonline.entity.CakeType;

@Controller
@RequestMapping("cake")
public class CakeController {
	
	@Resource
	private CakeServiceImpl cakeServiceImpl;
	
	/*public PagerBean<ModelInfoDTO> findModelLabelAll_bak(PagerBean<ModelInfo> pager, String dataSource) {  
        PagerBean<ModelInfoDTO> pagerDto = null;  
        try {  
            Session session = sessionFactory.getCurrentSession();  
            StringBuffer sb = new StringBuffer();  
            sb.append("select  m from ModelInfo m ");  
            sb.append("where m.dataSource=? and m.modelStatus!=? and  m.modelName like " + pager.getParam().getModelName() + " order by m.createTime desc,m.modelName asc");  
            String hql = sb.toString();  
            //分页  
            List<ModelInfo> lists = (List<ModelInfo>) session.createQuery(hql)  
                    .setParameter(0, dataSource)  
                    .setParameter(1, Constants.MODEL_STATUS_DELETE)  
                    .setFirstResult((pager.getPage() - 1) * pager.getPageSize()).setMaxResults(pager.getPageSize())  
                    .list();  
            //查询总数  
            List<ModelInfo> totals = (List<ModelInfo>) session.createQuery(hql)  
                    .setParameter(0, dataSource)  
                    .setParameter(1, Constants.MODEL_STATUS_DELETE)  
                    .list();  
  
            //封装页面数据参数  
            List<ModelInfoDTO> rows = getResultModelInfo(lists);  
            pagerDto = new PagerBean<ModelInfoDTO>();  
            pagerDto.setPage(pager.getPage());  
            pagerDto.setPageSize(pager.getPageSize());  
            pagerDto.setOrder(pager.getOrder());  
            pagerDto.setSort(pager.getSort());  
  
            pagerDto.setTotal(totals.size());  
            pagerDto.setRows(rows);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
  
        return pagerDto;  
    }  */
	
	@RequestMapping("/list")
	public String list(Model model){
		List<Cake> list=this.cakeServiceImpl.listAll();
		model.addAttribute("cakelist", list);
		return "products";
	}
	
	@RequestMapping("/single")
	public String single(Model model,@RequestParam int cakeid){
		Cake cake=this.cakeServiceImpl.single(cakeid);
		model.addAttribute("cake", cake);
		return "single";
	}
	
	@RequestMapping("/save")
	public String save(@RequestParam String name,@RequestParam String description, @RequestParam double price,@RequestParam double discountprice,@RequestParam String listimg,
			@RequestParam String img1,@RequestParam String img2,@RequestParam String img3,@RequestParam Date cakedate,@RequestParam CakeType cakeType){
		Cake cake = new Cake();
		cake.setName(name);
		cake.setDescription(description);
		cake.setPrice(price);
		cake.setDiscountprice(discountprice);
		cake.setListimg(listimg);
		cake.setImg1(img1);
		cake.setImg2(img2);
		cake.setImg3(img3);
		cake.setCakedate(cakedate);
		cake.setCakeType(cakeType);
		this.cakeServiceImpl.saveCake(cake);
		return "";
	}
	
	@RequestMapping("/update")
	public String update(@RequestParam int id,@RequestParam String name,@RequestParam String description,@RequestParam double price,@RequestParam double discountprice,
			@RequestParam String listimg,@RequestParam String img1,@RequestParam String img2,@RequestParam String img3,@RequestParam Date cakedate,@RequestParam CakeType cakeType){
		Cake cake = new Cake();
		cake.setId(id);
		cake.setName(name);
		cake.setDescription(description);
		cake.setPrice(price);
		cake.setDiscountprice(discountprice);
		cake.setListimg(listimg);
		cake.setImg1(img1);
		cake.setImg2(img2);
		cake.setImg3(img3);
		cake.setCakedate(cakedate);
		cake.setCakeType(cakeType);
		this.cakeServiceImpl.updateCake(cake);
		return "";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam int id) {
		this.cakeServiceImpl.deleteCake(id);
		return "";
	}
}
