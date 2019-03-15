package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.PersonalPayDao;

@Service("SelectPersonalPaylList")
public class SelectPersonalPayList {
	
	@Autowired
	private PersonalPayDao ppd;
	
	public List<Map<String, String>> callPersonalPayDao(String report) {
		
		return ppd.selectPersonalPayList(report);
		
	}
	
}
