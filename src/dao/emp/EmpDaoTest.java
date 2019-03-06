package dao.emp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("EmpDaoTest")
public class EmpDaoTest {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectEmpList(Map<String, String> temp) {
		
		return slm.getList();
	}
	
}
