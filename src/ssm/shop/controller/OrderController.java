package ssm.shop.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import ssm.shop.entity.Goods;
import ssm.shop.entity.Order;
import ssm.shop.entity.OrderItem;
import ssm.shop.entity.User;
import ssm.shop.service.OrderService;
/*
 * 订单的控制类
 */
@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	Order order;

	@Autowired
	OrderService orderService;

	@RequestMapping("/msg")
	public String msg() {

		return "/order/msg";
	}	
	/*
	 * 创建订单
	 */
	@RequestMapping("/createOrder")
	public String createOrder(double price, HttpSession session) {
		User user = (User) session.getAttribute("user");
		Date date = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(date);
		order = new Order(price, user.getUserId(), user.getUserAddress(), time, 1, user.getUserPhone());

		orderService.createOrder(order);
		System.out.println(order);
		Map<Goods, Integer> cart = (Map<Goods, Integer>) session.getAttribute("cart");
		Set<Goods> key = cart.keySet();

		for (Goods goods : key) {
			OrderItem item = new OrderItem();
			item.setGoodsId(goods.getGoodsId());
			item.setGoodsCount(cart.get(goods));
			item.setOrderId(order.getOrderId());
			orderService.createOrderItem(item);
		}
		session.removeAttribute("cart");
		return "redirect:/user/personalInfo";
	}
	/*
	 * 展示订单
	 */
	@RequestMapping("/showOrder")
	public String showOrder(Map<String, Object> map, HttpSession session) {
		User user = (User) session.getAttribute("user");
		System.out.println(user);
		List<Order> orderList = orderService.showOrder(user.getUserId());
		map.put("orderList", orderList);
		for (Order order : orderList) {
			System.out.println(order);
		}
		return "/admin/main";
	}
	/*
	 * 支付
	 */
	@RequestMapping("/pay")
	public void pay(Integer orderId, HttpServletResponse resp, HttpServletRequest req) throws IOException {
		orderService.pay(orderId);

		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<script>");
		out.println("window.open ('" + req.getContextPath() + "/user/personalInfo','_top')");
		out.println("</script>");
		out.println("</html>");
	}
	/*
	 * 发货
	 */
	@RequestMapping("/sendGoods")
	public String sendGoods(Integer orderId) throws IOException {
		orderService.sendGoods(orderId);

		return "redirect:/admin/getAllOrder";
	}
	/*
	 * 确认订单
	 */
	@RequestMapping("confirm")
	public void confirm(Integer orderId, HttpServletResponse resp, HttpServletRequest req) throws IOException {
		orderService.confirm(orderId);
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<script>");
		out.println("window.open ('" + req.getContextPath() + "/user/personalInfo','_top')");
		out.println("</script>");
		out.println("</html>");
		
	}
	
}
