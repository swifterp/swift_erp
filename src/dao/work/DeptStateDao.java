package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("DeptStateDao")
public class DeptStateDao {
	
	@Autowired
	private selectListMapper slm;

	public List<Map<String, String>> selectDeptState(String DEPT_NAME) {
		return slm.getDeptStateList(DEPT_NAME);
	}


}
