package logic.emp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.emp.EmpDaoTest;

@Service("EmpLogicTest")
public class EmpLogicTest {
	
	@Autowired
	private EmpDaoTest edt;
	
	public List<Map<String, String>> callDaoTest() {
		
		Map<String, String> temp = new HashMap<String, String>();
		
		return edt.selectEmpList(temp);
		
	}
	
}
