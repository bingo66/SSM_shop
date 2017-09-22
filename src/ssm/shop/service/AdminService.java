package ssm.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.shop.dao.AdminDao;
import ssm.shop.entity.Admin;
import ssm.shop.entity.Goods;
import ssm.shop.entity.Order;
import ssm.shop.entity.OrderItem;

@Service
public class AdminService {
	@Autowired
	AdminDao adminDao;

	public List<Order> getAllOrder() {
		List<Order> orderList = adminDao.getAllOrder();

		for (Order order : orderList) {
			order.setOrderItem(adminDao.getOrderItem(order.getOrderId()));
			for (OrderItem orderItem : order.getOrderItem()) {
				orderItem.setGoods(adminDao.getGoods(orderItem.getGoodsId()));
			}
		}
		return orderList;
	}

	public Admin login(Admin admin) {
		return adminDao.Login(admin);
	}

	public List<Goods> selectAllGoods() {
		return adminDao.selectAllGoods();
	}
	public List<Order> selectNoPayedOrder(){
		List<Order> orderList = adminDao.selectNoPayedOrder();

		for (Order order : orderList) {
			order.setOrderItem(adminDao.getOrderItem(order.getOrderId()));
			for (OrderItem orderItem : order.getOrderItem()) {
				orderItem.setGoods(adminDao.getGoods(orderItem.getGoodsId()));
			}
		}
		return orderList;
	}
	
	public List<Order> selectPayedOrder(){
		List<Order> orderList = adminDao.selectPayedOrder();

		for (Order order : orderList) {
			order.setOrderItem(adminDao.getOrderItem(order.getOrderId()));
			for (OrderItem orderItem : order.getOrderItem()) {
				orderItem.setGoods(adminDao.getGoods(orderItem.getGoodsId()));
			}
		}
		return orderList;
	}
	public void insertGoods(Goods goods){
		adminDao.insertGoods(goods);
	}
	
	public void removeGoods(Integer goodsId){
		adminDao.removeGoods(goodsId);
	}
	public void edit(Goods goods){
		adminDao.editGoods(goods);
	}
	public Goods getGoods(Integer goodsId){
		return adminDao.getGoods(goodsId);
	}
}
