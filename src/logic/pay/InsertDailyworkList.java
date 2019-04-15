package logic.pay;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.DailyworkInsertDao;

@Service("InsertDailyworkList")
public class InsertDailyworkList {
	
	@Autowired
	private DailyworkInsertDao dwid;
	
	public List<Map<String, String>> callDailyworkInsertDao(HashMap<String, String> datas) {
		
		System.out.println(datas.get("empno"));
		
		String selectedDate = "";
		
		if(Integer.parseInt(datas.get("month")) > 9) {
			selectedDate = datas.get("year") + "/" + datas.get("month");
		} else {
			selectedDate = datas.get("year") + "/0" + datas.get("month");
		}
		
		if(Integer.parseInt(datas.get("day")) > 9) {
			selectedDate = selectedDate + "/" + datas.get("day");
		} else {
			selectedDate = selectedDate + "/0" + datas.get("day");
		}
		
		//System.out.println(datas);
		
		List<Map<String, String>> lst = new ArrayList<Map<String, String>>();
		
		for(int i=0;i<datas.size();i++) {

			HashMap<String, String> tmp = new HashMap<String, String>();
			
			if(datas.get(String.valueOf(i)) != null) {
				
				tmp.put("SELECTEDDATE", selectedDate);
				tmp.put("EMPNO", datas.get("empno"));
				tmp.put("ALLOWANCE_NO", String.valueOf(i));
				tmp.put("ALLOWANCE_NAME", datas.get(String.valueOf(i)));
				tmp.put("DAILYWORK_TIME", datas.get("DAILYWORK_TIME"+i));
			
				lst.add(tmp);
				
			}
			
		}
		
		//System.out.println(lst);
		
		return dwid.selectDailyworkList(selectedDate, lst);
		
	}
	
}
