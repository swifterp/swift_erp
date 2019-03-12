package logic.approval;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.approval.CommonStyleDao;

@Service("SelectCommonStyle")
public class SelectCommonStyle {
	
	@Autowired
	private CommonStyleDao csd;
	
	public List<Map<String, String>> callCommonStyleDao() {
		
		return csd.selectCommonList();
	}

}
