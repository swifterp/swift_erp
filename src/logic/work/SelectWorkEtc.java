package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.WorkEtcDao;

@Service("SelectWorkEtc")
public class SelectWorkEtc {
	@Autowired
	private WorkEtcDao wed;
	
	public List<Map<String,String>> callWorkEtcDao(){
		
		return wed.selectWorkEtc();
		
	}

}
