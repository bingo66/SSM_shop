package ssm.shop.dao;

import java.util.List;

import ssm.shop.entity.Goods;

public interface GoodsDao {
	List<Goods> selectAllGoods();
}
