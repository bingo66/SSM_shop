package ssm.shop.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import ssm.shop.entity.Admin;
import ssm.shop.entity.Goods;
import ssm.shop.entity.Order;
import ssm.shop.service.AdminService;

/*
 * 管理员的控制类
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminService adminService;

	/*
	 * body、main、left、top为后台管理的分页面
	 */
	@RequestMapping("body")
	public String bodyPage() {
		return "admin/body";
	}

	@RequestMapping("main")
	public String mainPage() {
		return "admin/main";
	}

	@RequestMapping("left")
	public String leftPage() {
		return "admin/left";
	}

	@RequestMapping("top")
	public String topPage() {
		return "admin/top";
	}

	/*
	 * 管理员登录页
	 */
	@RequestMapping("/adminLoginPage")
	public String adminLoginPage() {

		return "/admin/adminAccount/login";
	}

	/*
	 * 登录操作
	 */
	@RequestMapping("/login")
	public String adminLogin(Admin admin, HttpSession session, Map<String, Object> map) {
		Admin adminLogin = adminService.login(admin);
		if (adminLogin != null) {
			map.put("adminLoginMSG", "登录成功");
			session.setAttribute("admin", adminLogin);
		} else {
			map.put("adminLoginMSG", "登录失败");
		}
		return "/admin/adminAccount/loginResult";
	}

	/*
	 * 查询 订 单
	 */
	@RequestMapping("/getAllOrder")
	public String getAllOrder(Map<String, Object> map) {

		List<Order> orderList = adminService.getAllOrder();
		map.put("orderList", orderList);
		return "admin/order/allOrder";
	}

	/*
	 * 查询商品
	 */
	@RequestMapping("/selectAllGoods")
	public String selectAllGoods(Map<String, Object> map) {
		map.put("goodsList", adminService.selectAllGoods());

		return "/admin/goods/goodsList";
	}

	/*
	 * 添加商品页面
	 */
	@RequestMapping("/addGoodsPage")
	public String addGoodsPage() {

		return "/admin/goods/add";
	}

	/*
	 * 添加商品
	 */
	@RequestMapping("/addGoods")
	public String addGoods(MultipartFile pic, HttpSession session, Goods goods) {
		String fileName = pic.getOriginalFilename();

		String path = session.getServletContext().getRealPath("static/goodsPicture");

		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}

		// 保存
		try {
			pic.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String picPath = "/static/goodsPicture/" + fileName;
		goods.setGoodsPicture(picPath);
		adminService.insertGoods(goods);
		return "/admin/goods/addResult";
	}

	/*
	 * 查询未支付的订单
	 */
	@RequestMapping("/selectNoPayedOrder")
	public String selectNoPayedOrder(Map<String, Object> map) {
		List<Order> orderList = adminService.selectNoPayedOrder();
		map.put("orderList", orderList);

		return "admin/order/noPay";
	}

	/*
	 * 查询已经支付的订单
	 */
	@RequestMapping("/selectPayedOrder")
	public String selectPayedOrder(Map<String, Object> map) {
		List<Order> orderList = adminService.selectPayedOrder();
		map.put("orderList", orderList);

		return "admin/order/paid";
	}

	/*
	 * 删除商品
	 */
	@RequestMapping("/removeGoods")
	public String removeGoods(Integer goodsId) {

		adminService.removeGoods(goodsId);
		return "admin/goods/removeResult";
	}

	/*
	 * 编辑商品页面
	 */
	@RequestMapping("/editPage")
	public String editPage(Integer goodsId, Model model) {
		Goods goods = adminService.getGoods(goodsId);
		model.addAttribute("goods", goods);
		return "admin/goods/edit";
	}

	/*
	 * 编辑商品
	 */
	@RequestMapping("/editGoods")
	public String editGoods(Goods goods) {
		adminService.edit(goods);

		return "admin/goods/editResult";
	}

	@RequestMapping("/msg")
	public String msg() {

		return "admin/adminAccount/msg";
	}
}
