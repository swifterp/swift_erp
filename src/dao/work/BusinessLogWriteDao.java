package dao.work;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("BusinessLogWriteDao")
public class BusinessLogWriteDao {
	
	@Autowired
	private insertListMapper ilm;
	
	@Autowired 
	private selectListMapper slm;
	
	public List<Map<String, String>> InsertBusinessLog (HashMap<String,String> businesslog) {
	
	ilm.InsertBusinessLog(businesslog);
	
	return slm.getBusinessLogList();
	
	
	}

}
