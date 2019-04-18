package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.PersonalPayinfoDao;

@Service("PersonalpayinfoList")
public class PersonalpayinfoList {
	
	@Autowired
	private PersonalPayinfoDao ppid;
	
	public List<Map<String, String>> callpayinfoDao(Integer emp_number) {
		
		return ppid.selectPersonalPayList(emp_number);
		
	}
	
	public List<Map<String, String>> calldeducinfoDao(Integer emp_number) {
		
		return ppid.selectPersonalDeducList(emp_number);
		
	}
	
}
