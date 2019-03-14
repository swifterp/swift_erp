package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("MonthlyempDao")
public class MonthlyempDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectMonthlyempList(String selectedDate) {
		
		return slm.getMonthlyempList(selectedDate);
	}
	
}
