package com.kh.iclass.common.util;

import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;





public class ParseListToJson {
	@SuppressWarnings("unchecked")
	public static JSONArray convertListToJson(List<Map<String, Object>> bankCdList) {

		JSONArray jsonArray = new JSONArray();

		for (Map<String, Object> map : bankCdList) {

			jsonArray.add(convertMapToJson(map));

		}

		return jsonArray;

	}

	@SuppressWarnings("unchecked")
	public static JSONObject convertMapToJson(Map<String, Object> map) {

		JSONObject json = new JSONObject();

		for (Map.Entry<String, Object> entry : map.entrySet()) {

			String key = entry.getKey();

			Object value = entry.getValue();

			// json.addProperty(key, value);

			json.put(key, value);

		}

		return json;

	}

}
