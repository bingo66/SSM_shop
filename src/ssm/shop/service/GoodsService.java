package ssm.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.shop.dao.GoodsDao;
import ssm.shop.entity.Goods;

@Service
public class GoodsService {
	@Autowired
	GoodsDao goodsDao;
	public List<Goods> selectAllGoods(){
		
		
		return goodsDao.selectAllGoods();
	}
}
