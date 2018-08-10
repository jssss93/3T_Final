package com.kh.iclass.order;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("orderDAO")
public class OrderDAO extends AbstractDAO {
	
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> orderMember(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("goods.orderMember", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> orderGoods(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("goods.orderGoods", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> orderGoods2(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("goods.orderGoods2", map);
	}
	
	

	public Object createDeliveryList(Map<String, Object> map) throws Exception {
		return  insert("goods.createDeliveryList", map);
	}
	
	public Object createOrderList(Map<String, Object> map) throws Exception {
		return  insert("goods.createOrderList", map);
	}
	
	public Object goodsCountDown(Map<String, Object> map) throws Exception {
		return  update("goods.goodsCountDown", map);
	}
	
	public Object insertPoint(Map<String, Object> map) throws Exception {
		return  insert("goods.insertPoint", map);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectOrderList2(Map<String, Object> map) throws Exception {
		return selectList("member.selectOrderList2", map);
	}
	
}
