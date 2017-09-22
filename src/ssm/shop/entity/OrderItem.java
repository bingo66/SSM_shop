package ssm.shop.entity;

import org.springframework.stereotype.Component;

@Component
public class OrderItem {
	private Integer orderId;
	private Integer goodsId;

	private Integer goodsCount;

	private Goods goods;

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public Integer getGoodsCount() {
		return goodsCount;
	}

	public void setGoodsCount(Integer goodsCount) {
		this.goodsCount = goodsCount;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	@Override
	public String toString() {
		return "OrderItem [orderId=" + orderId + ", goodsId=" + goodsId + ", goodsCount=" + goodsCount + ", goods="
				+ goods + "]";
	}
	
}
