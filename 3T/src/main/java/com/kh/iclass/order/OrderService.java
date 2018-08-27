package com.kh.iclass.order;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface OrderService {
	
	public void insertOrder(Map<String, Object> map,HttpServletRequest request) throws Exception;
	
	public void insertOrderDetail(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception;
	List<Map<String, Object>> orderList(Map<String, Object> map) throws Exception;
	List<Map<String, Object>> swapList(Map<String, Object> map) throws Exception;
	List<Map<String, Object>> refundList(Map<String, Object> map) throws Exception;
	
	
	Map<String, Object> orderMember(Map<String, Object> map) throws Exception;
	
	Map<String, Object> orderGoods(Map<String, Object> map) throws Exception;
	
	Map<String, Object> orderGoods2(Map<String, Object> map) throws Exception;
	
	Object createDeliveryList(Map<String, Object> map) throws Exception;
	
	Object createOrderList(Map<String, Object> map) throws Exception;
	
	Object goodsCountDown(Map<String, Object> map) throws Exception;
	
	Object insertPoint(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectOrderList2(Map<String, Object> map) throws Exception;
	List<Map<String, Object>> selectOrderListAll(Map<String, Object> map) throws Exception;
	public void changeState1(Map<String, Object> map) throws Exception;
	public void changeState2(Map<String, Object> map) throws Exception;
	Map<String, Map<String, Object>> getSale(Map<String, Object> map,String mapKey) throws Exception;
	List<Map<String, Object>> getSale2(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> selectRefundListAll(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> selectChangeListAll(Map<String, Object> map) throws Exception;

	public void changeState8(Map<String, Object> map);

	public void changeState9(Map<String, Object> map);
}
