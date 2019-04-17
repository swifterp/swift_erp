package resources.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
 
public class CanvasjsChartData {
	
	private static selectListMapper slm;
	
	static Map<Object,Object> map = null;
	static List<List<Map<Object,Object>>> list = new ArrayList<List<Map<Object,Object>>>();
	static List<Map<Object,Object>> dataPoints1 = new ArrayList<Map<Object,Object>>();
	
	static {
		List<Map<Object, Object>> lst = slm.canvas();
		if(lst != null){
			for(int i=0;i<lst.size();i++){
				map = new HashMap<Object,Object>(); 
				map.put("label", lst.get(i).get("parent_dname")); 
				map.put("y", String.valueOf(lst.get(i).get("round((ratio_to_report(count(empno)) over())*100)")));
				dataPoints1.add(map);
			}
		}
		list.add(dataPoints1);
	}
 
	public static List<List<Map<Object, Object>>> getCanvasjsDataList() {
		return list;
	}
}                 
