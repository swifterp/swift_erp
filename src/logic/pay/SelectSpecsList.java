package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.SpecsDao;

@Service("SelectSpecsList")
public class SelectSpecsList {
	
	@Autowired
	private SpecsDao sd;
	
	public List<Map<String, String>> callSpecsDao(Integer empno) {
		
		return sd.selectSpecsList(empno);
		
	}
	
}
