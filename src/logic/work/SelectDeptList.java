package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.DeptListDao;

@Service("SelectDeptList")
public class SelectDeptList {
	
	@Autowired
	private DeptListDao dld;
	
	public List<Map<String,String>> CallDeptListDao(String deptName){	
		
		return dld.selectDeptList(deptName);
	}

}
