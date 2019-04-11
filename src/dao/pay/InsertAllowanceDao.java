package dao.pay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.MergeListMapper;
import resources.mapper.selectListMapper;

@Repository("InsertAllowanceDao")
public class InsertAllowanceDao {
	
	@Autowired
	private MergeListMapper mlm;
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> insertAllowanceList(String name, String division) {
		
		Map<String, String> info = new HashMap<String, String>();
		info.put("name", name);
		info.put("division", division);
				
		mlm.insertAllowanceItem(info);
		
		return slm.getAllowanceList();
	}
	
}
