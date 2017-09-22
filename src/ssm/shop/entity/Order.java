package ssm.shop.entity;


import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class Order {
	private Integer orderId;
	private double orderPrice;
	private Integer userId;
	private String orderAddress;
	private String orderTime;
	private Integer orderState;
	private String  orderPhone;
	private List<OrderItem> orderItem ;
	
	public Order() {
		// TODO Auto-generated constructor stub
	}
	public Order( double orderPrice, Integer userId, String orderAddress, String orderTime,
			Integer orderState,String orderPhone) {
		super();
		
		this.orderPrice = orderPrice;
		this.userId = userId;
		this.orderAddress = orderAddress;
		this.orderTime = orderTime;
		this.orderState = orderState;
		this.orderPhone = orderPhone;
	}
	
	public String getOrderPhone() {
		return orderPhone;
	}
	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}
	public Integer getOrderId() {
		return orderId;
	}
	
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	
	
	public List<OrderItem> getOrderItem() {
		return orderItem;
	}
	public void setOrderItem(List<OrderItem> orderItem) {
		this.orderItem = orderItem;
	}
	public double getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(double orderPrice) {
		this.orderPrice = orderPrice;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public Integer getOrderState() {
		return orderState;
	}

	public void setOrderState(Integer orderState) {
		this.orderState = orderState;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderPrice=" + orderPrice + ", userId=" + userId + ", orderAddress="
				+ orderAddress + ", orderTime=" + orderTime + ", orderState=" + orderState + ", orderPhone="
				+ orderPhone + ", orderItem=" + orderItem + "]";
	}
	
}
