package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.WorkConfirmSelectDao;

@Service("SelectWorkConfirm")
public class SelectWorkConfirm {
	
	@Autowired
	private WorkConfirmSelectDao wcsd;
	
	public List<Map<String, String>> callTotalWorkConfirmDao() {
		
		return wcsd.selectTotalWorkConfirmList();
		
	}
	
}
