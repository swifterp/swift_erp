package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.WorkTimeDao;

@Service("SelectWorkTime")
public class SelectWorkTime {
	
	@Autowired
	private WorkTimeDao wtd;
	
	public List<Map<String,String>> callWorkTimeDao(){
		
		return wtd.selectWorkTime();
		
	}

}
