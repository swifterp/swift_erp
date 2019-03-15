package logic.work;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.BusinessLogWriteDao;


@Service("InsertBusinessLog")
public class InsertBusinessLog {
	
	@Autowired
	private BusinessLogWriteDao bld;
	
	public List<Map<String, String>> writeBusinessLog(HashMap<String, String> businesslog) {
		
		return bld.InsertBusinessLog(businesslog);
		
	}
	
}
