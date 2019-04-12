package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.MergeListMapper;
import resources.mapper.selectListMapper;

@Repository("InsertDeductionDao")
public class InsertDeductionDao {
	
	@Autowired
	private MergeListMapper mlm;
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> insertDeductionList(String name) {

		mlm.insertDeductionItem(name);
		
		return slm.getDeductionList();
	}
	
}
