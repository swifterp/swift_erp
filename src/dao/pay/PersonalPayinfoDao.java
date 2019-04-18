package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("PersonalPayinfoDao")
public class PersonalPayinfoDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectPersonalPayList(Integer emp_number) {
		
		String myEmpno = slm.getEmpOne(emp_number);
		
		List<Map<String, String>> tmp = slm.getPayInfoList(myEmpno);
		
		return tmp;
	}
	
	public List<Map<String, String>> selectPersonalDeducList(Integer emp_number) {

		String myEmpno = slm.getEmpOne(emp_number);
		
		List<Map<String, String>> tmp = slm.getDeducInfoList(myEmpno);
		
		return tmp;
	}
	
}
