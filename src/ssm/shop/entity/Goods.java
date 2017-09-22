package ssm.shop.entity;
/**
 * 商品类
 * @author Bingo
 *
 */
public class Goods {

	private Integer goodsId;
	private String goodsName;
	private double goodsPrice;
	private String goodsPicture;
	
	
	

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if(obj instanceof Goods){
			Goods goods = (Goods)obj;
			if(this.goodsId.equals(goods.goodsId)){
				return true;
			}
		}
		return false;
	}

	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsPicture() {
		return goodsPicture;
	}

	public void setGoodsPicture(String goodsPicture) {
		this.goodsPicture = goodsPicture;
	}

	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice
				+ ", goodsPicture=" + goodsPicture + "]";
	}

}
