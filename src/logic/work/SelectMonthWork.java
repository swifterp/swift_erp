package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.MonthWorkDao;

@Service("SelectMonthWork")
public class SelectMonthWork {
	
	@Autowired
	private MonthWorkDao mwd;
	
	public List<Map<String,String>> callMonthWorkDao(String search_month){
		
		return mwd.selectMonthWork(search_month);
		
	}
	


}
