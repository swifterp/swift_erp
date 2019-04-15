package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.MergeListMapper;
import resources.mapper.selectListMapper;

@Repository("DailyworkInsertDao")
public class DailyworkInsertDao {
	
	@Autowired
	private selectListMapper slm;
	
	@Autowired
	private MergeListMapper mlm;
	
	public List<Map<String, String>> selectDailyworkList(String selectedDate, List<Map<String, String>> lst) {

		for(int i=0;i<lst.size();i++) {
			mlm.resetDailyworkList(lst.get(i));
		}

		return slm.getDailyworkList(selectedDate);
	}
	
}
