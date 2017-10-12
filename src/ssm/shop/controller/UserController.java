package ssm.shop.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import ssm.shop.entity.Order;
import ssm.shop.entity.User;
import ssm.shop.service.UserService;
/*
 * 用户相关控制类
 */
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;

	/*
	 * 登录页面
	 */
	@RequestMapping("/reg_Login")
	public String regOrLogin() {
		return "user/regOrLogin";
	}

	/*
	 * 注册页面
	 */
	@RequestMapping("/registerPage")
	public String registerPage() {
		return "user/registerPage";
	}

	/*
	 * 注册操作
	 */
	@RequestMapping("/register")
	public String register(User user, Map<String, Object> map) {

		if (userService.insertUser(user)) {
			map.put("regMSG", "注册成功！");
		} else {
			map.put("regMSG", "注册失败，用户名已存在");
		}

		return "user/registerResult";
	}

	/*
	 * 登录操作
	 */
	@RequestMapping("/login")
	public String login(User user, Map<String, Object> map, HttpSession session) {

		if (userService.login(user)) {
			map.put("loginMSG", "登录成功！");
			session.setAttribute("user", userService.getUserByName(user));
		} else {
			map.put("loginMSG", "登录失败！请检查用户名和密码！");
		}
		System.out.println(userService.getUserByName(user));
		return "/user/loginResult";
	}

	/*
	 * 个人中心
	 */
	@RequestMapping("/personalInfo")
	public String personalPage() {

		return "user/personal/personInfo";
	}

	/*
	 * 我的订单
	 */
	@RequestMapping("/myOrder")
	public String orderPage(HttpSession session, Map<String, Object> map) {

		User user = (User) session.getAttribute("user");
		List<Order> orderList = userService.getOrder(user.getUserId());
		map.put("orderList", orderList);
		System.out.println(orderList);

		return "/user/personal/myOrder";
	}

}
