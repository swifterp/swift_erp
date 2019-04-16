package resources.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
 
public class CanvasjsChartData {
	@Autowired
	private static selectListMapper slm;

	public static List<Map<Object, Object>> test() {
		return slm.canvas();
	}
	
	static Map<Object,Object> map = null;
	static List<List<Map<Object,Object>>> list = new ArrayList<List<Map<Object,Object>>>();
	static List<Map<Object,Object>> dataPoints1 = new ArrayList<Map<Object,Object>>();
	
	static {
		List<Map<Object, Object>> lst = test();
		if(lst != null){
			for(int i=0;i<lst.size();i++){
		map = new HashMap<Object,Object>(); map.put("label", lst.get(i).get("aa")); map.put("y", lst.get(i).get("bb"));dataPoints1.add(map);
			}
		}
		list.add(dataPoints1);
		
	}
 
	public static List<List<Map<Object, Object>>> getCanvasjsDataList() {
		return list;
	}
}                 
