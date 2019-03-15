package dao.pay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("DailyworkInsertDao")
public class DailyworkInsertDao {
	
	@Autowired
	private insertListMapper ilm;
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectDailyworkList(String selectedDate, String empno, String night, String weekend, String annualAllowance) {

		HashMap<String, String> info = new HashMap<String, String>();
		
		info.put("selectedDate", selectedDate);
		info.put("empno", empno);
		info.put("night", night);
		info.put("weekend", weekend);
		info.put("annualAllowance", annualAllowance);
		
		ilm.setDailyworkList(info);

		return slm.getDailyworkList(selectedDate);
	}
	
}
