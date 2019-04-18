package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.DeptDao;

@Service("SelectDeptList")
public class SelectDeptList {
	@Autowired
	private DeptDao dd;

//Dept POP-UP Call
	public List<Map<String, String>> call_pop_deptlist(){
		return dd.select_pop_deptlist();
	}

}
