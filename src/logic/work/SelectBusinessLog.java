package logic.work;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.BusinessLogDao;

@Service("SelectBusinessLog")
public class SelectBusinessLog {
	
	@Autowired
	private BusinessLogDao bld;

//Work Business List Call
	public List<Map<String,String>> callBusinessLogDao(){
		return bld.selectBusinessLog();
	}

//Work Business List Search
	public List<Map<String, String>> callworkDetailList(HashMap<String, String> searchData){
		return bld.selectworkDetailList(searchData);
	}
//Work Business List Low Search
	public List<Map<String, String>> callwork_DataListLow(int log_no){
		return bld.selectwork_DataListLow(log_no);
	}
	

	

}
