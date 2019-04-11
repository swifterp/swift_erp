package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("PersonalPayDao")
public class PersonalPayDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectPersonalPayList(String report) {
		
		List<Map<String, String>> tmp = slm.getPersonalPayList(report);
		
		return tmp;
	}
	
	public List<Map<String, String>> selectPersonalDeducList(String report) {

		List<Map<String, String>> tmp = slm.getPersonalDeducList(report);
		
		return tmp;
	}
	
}
