package ssm.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ssm.shop.entity.Goods;
import ssm.shop.service.GoodsService;
/*
 * 商品的控制类
 */
@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	@Autowired
	GoodsService goodsService;
	@RequestMapping("/showGoods")
	/*
	 * 展示商品
	 */
	public String showGoods(Model model){
		
		List<Goods> goodsList = goodsService.selectAllGoods();
		model.addAttribute("goodsList", goodsList);
		return "/goods/showGoods";
	}
}
