package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.WorkStateDao;


@Service("SelectWorkState")
public class SelectWorkState {
	
	@Autowired
	private WorkStateDao wsd;
	
	public List<Map<String,String>> callWorkStateDao(){
		
		return wsd.selectWorkState();
		
	}
	



}
