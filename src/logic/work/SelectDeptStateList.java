package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.DeptStateDao;


@Service("/SelectDeptStateList")
public class SelectDeptStateList {
	
	@Autowired
	private DeptStateDao dsd;
	
	public List<Map<String,String>> callDeptStateDao(String DEPT_NAME){
		
		return dsd.selectDeptState(DEPT_NAME);
		
	}
	

}
