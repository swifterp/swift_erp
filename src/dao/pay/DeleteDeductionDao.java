package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;
import resources.mapper.selectListMapper;

@Repository("DeleteDeductionDao")
public class DeleteDeductionDao {
	
	@Autowired
	private deleteListMapper dlm;
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> deleteDeductionList(Integer deduction_no) {
		
		dlm.killDeductionList(deduction_no);
		
		return slm.getDeductionList();
	}
	
}
