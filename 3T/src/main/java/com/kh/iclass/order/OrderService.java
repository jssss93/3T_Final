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
	//관리자 총 주문리스트
	Map<String, Object> selectOrderListAll(Map<String, Object> map) throws Exception;
	//관리자 0,1,2,3 주문 리스트
	Map<String, Object> selectOrderList(Map<String, Object> map) throws Exception;
	
	
	public void changeState1(Map<String, Object> map) throws Exception;
	public void changeState2(Map<String, Object> map) throws Exception;
	Map<String, Map<String, Object>> getSale(Map<String, Object> map,String mapKey) throws Exception;
	List<Map<String, Object>> getSale2(Map<String, Object> map) throws Exception;

	Map<String, Object> selectRefundListAll(Map<String, Object> map) throws Exception;

	Map<String, Object> selectChangeListAll(Map<String, Object> map) throws Exception;

	public void changeState8(Map<String, Object> map);

	public void changeState9(Map<String, Object> map);

	public List<Map<String, Object>> getSearchSale(Map<String, Object> map);

	public List<Map<String, Object>> selectListSearch(Map<String, Object> map);

	
	Map<String, Object> selectOrderSearchListAll(Map<String, Object> map) throws Exception;


	public List<Map<String, Object>> selectOrderInfo(Map<String, Object> map);

	public Map<String, Object> selectOrderMemberInfo(Map<String, Object> map);

	Map<String, Object> selectDetailList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectAdminDetailList(Map<String, Object> map) throws Exception;

	public List<Map<String, Object>> selectListSearchNonMem(Map<String, Object> map);

	public List getSizeList(Map<String, Object> map);
}
