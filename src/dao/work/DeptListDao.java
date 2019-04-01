package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("DeptListDao")
public class DeptListDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String,String>> selectDeptList(String deptName){
		
		return slm.getDeptList(deptName);
	}

}
