package ssm.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.shop.dao.CartDao;
import ssm.shop.entity.Goods;

@Service
public class CartService {
	@Autowired
	CartDao cartDao;
	public Goods getGoodsById(String goodsId){
		
		
		return cartDao.getGoodsById(goodsId);
	}
}
