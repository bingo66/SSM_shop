package ssm.shop.entity;
/*
 * 购物车实体类
 */
public class Cart {

	private int count;
	private Goods goods;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
}
