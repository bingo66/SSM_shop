package ssm.shop.dao;

import java.util.List;

import ssm.shop.entity.Admin;
import ssm.shop.entity.Goods;
import ssm.shop.entity.Order;
import ssm.shop.entity.OrderItem;

public interface AdminDao {
	//获取所有订单
	List<Order> getAllOrder();

	List<OrderItem> getOrderItem(Integer orderId);

	Goods getGoods(Integer goodsId);

	Admin Login(Admin admin);

	List<Goods> selectAllGoods();

	List<Order> selectNoPayedOrder();

	List<Order> selectPayedOrder();

	void insertGoods(Goods goods);

	void removeGoods(Integer goodsId);
	
	void editGoods(Goods goods);
}
