package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.BusinessLogDao;

@Service("SelectBusinessLog")
public class SelectBusinessLog {
	
	@Autowired
	private BusinessLogDao bld;
	
	public List<Map<String,String>> callBusinessLogDao(){
		
		return bld.selectBusinessLog();
		
	}
	

}
