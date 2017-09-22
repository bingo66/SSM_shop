package ssm.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import ssm.shop.dao.OrderDao;
import ssm.shop.entity.Order;
import ssm.shop.entity.OrderItem;

import org.springframework.stereotype.Service;

@Service
public class OrderService {
	@Autowired
	OrderDao orderDao;

	public void createOrder(Order order) {
		orderDao.createOrder(order);

	}

	public void createOrderItem(OrderItem item) {
		orderDao.createOrderItem(item);
	}

	public List<Order> showOrder(Integer userId) {

		List<Order> orderList = orderDao.getOrder(userId);

		for (Order order : orderList) {
			order.setOrderItem(orderDao.getOrderItem(order.getOrderId()));
			for (OrderItem orderItem : order.getOrderItem()) {
				orderItem.setGoods(orderDao.getGoods(orderItem.getGoodsId()));
			}
		}
		return orderList;
	}

	public void pay(Integer orderId) {
		orderDao.pay(orderId);
	}

	public void sendGoods(Integer orderId) {
		orderDao.sendGoods(orderId);
	}
	
	public void confirm(Integer orderId){
		orderDao.confirm(orderId);
	}

}
