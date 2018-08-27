package com.kh.iclass.order;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("orderDAO")
public class OrderDAO extends AbstractDAO {
	
	public void insertOrder(Map<String, Object> map) throws Exception {
		  insert("order.insertOrder", map);
	}
	
	public void insertOrderDetail(Map<String, Object> map) throws Exception {
		  insert("order.insertOrderDetail", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		return selectList("order.selectList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> orderList(Map<String, Object> map) throws Exception {
		return selectList("order.orderList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> swapList(Map<String, Object> map) throws Exception {
		return selectList("order.swapList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> refundList(Map<String, Object> map) throws Exception {
		return selectList("order.refundList", map);
	}
	
	
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
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectOrderListAll(Map<String, Object> map) throws Exception {
		return selectList("order.selectOrderListAll", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectRefundListAll(Map<String, Object> map) {
		return selectList("order.selectRefundListAll", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectChangeListAll(Map<String, Object> map) {
		return selectList("order.selectChangeListAll", map);
	}
	
	
	
	@SuppressWarnings("unchecked")
	public Map<String,Map<String, Object>> getSale(Map<String, Object> map,String mapKey) throws Exception {
		System.out.println("쿼리에서 나오자마자 값:"+selectMap("order.selectSale", map,mapKey));
		return selectMap("order.selectSale", map,mapKey);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getSale2(Map<String, Object> map) throws Exception {
		return selectList("order.selectSale", map);
	}
	public void changeState1(Map<String, Object> map) throws Exception {
		update("order.changeState1", map);
	}
	public void changeState2(Map<String, Object> map) throws Exception {
		update("order.changeState2", map);
	}
	public void changeState8(Map<String, Object> map) {
		update("order.changeState8", map);
	}

	public void changeState9(Map<String, Object> map) {
		update("order.changeState9", map);
	}

	
	
}
