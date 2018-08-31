package com.kh.iclass.order;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.kh.iclass.common.util.OrderDetailUtils;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Resource(name = "orderDAO")
	private OrderDAO orderDAO;

	@Resource(name = "OrderDetailUtils")
	private OrderDetailUtils orderDetailUtils;

	@Override
	public void insertOrder(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub

		orderDAO.insertOrder(map);

		List<Map<String, Object>> detailList = orderDetailUtils.parseInsertOrderDetail(map, request);
		for (int i = 0; i < detailList.size(); i++) {
			orderDAO.insertOrderDetail(detailList.get(i));
		}
	}

	@Override
	public void insertOrderDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		orderDAO.insertOrderDetail(map);
	}

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return orderDAO.selectList(map);
	}
	@Override
	public List<Map<String, Object>> orderList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return orderDAO.orderList(map);
	}
	@Override
	public List<Map<String, Object>> swapList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return orderDAO.swapList(map);
	}
	@Override
	public List<Map<String, Object>> refundList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return orderDAO.refundList(map);
	}
	
	//리스트
	@Override
	public List<Map<String, Object>> selectOrderListAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return orderDAO.selectOrderListAll(map);
	}
	
	@Override
	public List<Map<String, Object>> selectRefundListAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return orderDAO.selectRefundListAll(map);
	}
	@Override
	public List<Map<String, Object>> selectChangeListAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return orderDAO.selectChangeListAll(map);
	}
	
	
	
	
	@Override
	public Map<String, Object> orderMember(Map<String, Object> map) throws Exception {
		return orderDAO.orderMember(map);
	}

	@Override
	public Map<String, Object> orderGoods(Map<String, Object> map) throws Exception {
		return orderDAO.orderGoods(map);
	}

	@Override
	public Map<String, Object> orderGoods2(Map<String, Object> map) throws Exception {
		return orderDAO.orderGoods2(map);
	}

	@Override
	public Object createDeliveryList(Map<String, Object> map) throws Exception {

		return orderDAO.createDeliveryList(map);
	}

	@Override
	public Object createOrderList(Map<String, Object> map) throws Exception {
		return orderDAO.createOrderList(map);
	}

	@Override
	public Object goodsCountDown(Map<String, Object> map) throws Exception {
		return orderDAO.goodsCountDown(map);
	}

	@Override
	public Object insertPoint(Map<String, Object> map) throws Exception {
		return orderDAO.insertPoint(map);
	}

	@Override
	public List<Map<String, Object>> selectOrderList2(Map<String, Object> map) throws Exception {
		return orderDAO.selectOrderList2(map);
	}

	@Override
	public Map<String, Map<String, Object>> getSale(Map<String, Object> map,String mapKey) throws Exception {
		// TODO Auto-generated method stub
		return orderDAO.getSale(map,mapKey);
	}

	@Override
	public List<Map<String, Object>> getSale2(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return orderDAO.getSale2(map);
	}

	@Override
	public void changeState1(Map<String, Object> map) throws Exception {
		orderDAO.changeState1(map);
		
	}

	@Override
	public void changeState2(Map<String, Object> map) throws Exception {
		orderDAO.changeState2(map);
	}
	
	@Override
	public void changeState8(Map<String, Object> map) {
		orderDAO.changeState8(map);
	}

	@Override
	public void changeState9(Map<String, Object> map) {
		orderDAO.changeState9(map);
	}

	@Override
	public List<Map<String, Object>> getSearchSale(Map<String, Object> map) {
		System.out.println("들어옴?");
		return orderDAO.getSearchSale(map);
	}

	

	

}
