package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("DailyworkDao")
public class DailyworkDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectDailyworkList(String selectedDate) {
		
		return slm.getDailyworkList(selectedDate);
	}
	
}
