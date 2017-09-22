package ssm.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.shop.dao.UserDao;
import ssm.shop.entity.Order;
import ssm.shop.entity.OrderItem;
import ssm.shop.entity.User;

@Service
public class UserService {

	@Autowired
	UserDao userDao;

	public boolean login(User user) {

		if (userDao.login(user) != null) {
			return true;
		}

		return false;

	}

	public boolean insertUser(User user) {
		/*
		 * 先判断用户是否存在，不存在的情况下才能注册
		 */
		if (user.getUserName() != null) {
			User userTmp = userDao.getUserByName(user.getUserName());
			if (userTmp != null)
				return false;
		}

		userDao.insertUser(user);
		return true;

	}

	public User getUserByName(User user) {

		return userDao.getUserByName(user.getUserName());
	}

	
	public List<Order> getOrder(Integer userId) {
		
		List<Order> orderList = userDao.getOrder(userId);

		for (Order order : orderList) {
			order.setOrderItem(userDao.getOrderItem(order.getOrderId()));
			for (OrderItem orderItem : order.getOrderItem()) {
				orderItem.setGoods(userDao.getGoods(orderItem.getGoodsId()));
			}
		}
		return orderList;
	}

}
