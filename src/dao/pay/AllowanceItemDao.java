package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("AllowanceItemDao")
public class AllowanceItemDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectAllowanceList(Integer classify) {
		
		if(classify == 1) {
			return slm.getDailyAllowanceList();
		} else {
			return slm.getAllowanceList();
		}
		
	}
	
}
