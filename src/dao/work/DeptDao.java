package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("DeptDao")
public class DeptDao {
	
	@Autowired
	private selectListMapper slm;

//Dept POP-UP Call
	public List<Map<String, String>> select_pop_deptlist(){
		return slm.get_pop_deptlist();
	}


}
