package logic.work;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.BusinessLogDao;


@Service("InsertBusinessLog")
public class InsertBusinessLog {
	
	@Autowired
	private BusinessLogDao bld;
	
//Work Business Data Insert
	public List<Map<String, String>> callinsertBusinessLog(HashMap<String, String> businesslog) {
		return bld.InsertBusinessLog(businesslog);
	}
}
