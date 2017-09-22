package ssm.shop.dao;

import java.util.List;

import ssm.shop.entity.Goods;
import ssm.shop.entity.Order;
import ssm.shop.entity.OrderItem;

public interface OrderDao {
	void createOrder(Order order);

	void createOrderItem(OrderItem orderItem);

	List<Order> getOrder(Integer userId);

	List<OrderItem> getOrderItem(Integer orderId);

	Goods getGoods(Integer goodsId);

	void pay(Integer orderId);

	void sendGoods(Integer orderId);

	void confirm(Integer orderId);

	
}
