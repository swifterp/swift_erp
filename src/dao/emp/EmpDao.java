package dao.emp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import controller.Emp_Controller;
import resources.mapper.deleteListMapper;
import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("EmpDao")
public class EmpDao {
	@Autowired
	private selectListMapper slm;
	/*사원조회*/
	public List<Map<String, String>> selectEmpList() {
		return slm.getEmpList();
	}
	/*사원상세보기*/
	public List<Map<String, String>> empView(String empno) {
		return slm.getEmpView(empno);
	}

	/*사원등록*/
	@Autowired
	private insertListMapper ilm;
	public List<Map<String, String>> empAdd(HashMap<String, Integer> empPlus) {
		ilm.empAdd(empPlus);
		return slm.getEmpList();
	}
	
	/*사원삭제*/
	@Autowired
	private deleteListMapper dlm;
	public List<Map<String, String>> empDel(String empno) {
		return dlm.getEmpDel(empno);
	}
}
