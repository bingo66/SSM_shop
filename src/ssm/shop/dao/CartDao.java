package ssm.shop.dao;

import ssm.shop.entity.Goods;

public interface CartDao {
	Goods getGoodsById(String goodsId);
}
