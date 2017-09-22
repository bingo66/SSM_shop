package ssm.shop.dao;

import java.util.List;

import ssm.shop.entity.Goods;
import ssm.shop.entity.Order;
import ssm.shop.entity.OrderItem;
import ssm.shop.entity.User;

public interface UserDao {
	public void insertUser(User user);

	public User login(User user);

	public User getUserByName(String userName);
	
	public List<Order> getOrder(Integer userId);
	
	List<OrderItem> getOrderItem(Integer orderId);

	public Goods getGoods(Integer goodsId);		
}
