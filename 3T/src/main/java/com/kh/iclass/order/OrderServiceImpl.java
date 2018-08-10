package com.kh.iclass.order;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Resource(name = "orderDAO")
	private OrderDAO orderDAO;

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



}
