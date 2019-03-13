package dao.emp;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import controller.Emp_Controller;
import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("EmpDao")
public class EmpDao {
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectEmpList() {
		return slm.getEmpList();
	}
	public List<Map<String, String>> selectEmpAdd() {
		return slm.EmpAdd();
	}
}
