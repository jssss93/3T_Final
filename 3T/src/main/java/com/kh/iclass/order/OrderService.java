package com.kh.iclass.order;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface OrderService {
	
	public void insertOrder(Map<String, Object> map,HttpServletRequest request) throws Exception;
	
	public void insertOrderDetail(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception;
	
	
	Map<String, Object> orderMember(Map<String, Object> map) throws Exception;
	
	Map<String, Object> orderGoods(Map<String, Object> map) throws Exception;
	
	Map<String, Object> orderGoods2(Map<String, Object> map) throws Exception;
	
	public Object createDeliveryList(Map<String, Object> map) throws Exception;
	
	public Object createOrderList(Map<String, Object> map) throws Exception;
	
	public Object goodsCountDown(Map<String, Object> map) throws Exception;
	
	public Object insertPoint(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectOrderList2(Map<String, Object> map) throws Exception;
}
