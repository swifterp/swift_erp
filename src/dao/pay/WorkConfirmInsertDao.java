package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("WorkConfirmInsertDao")
public class WorkConfirmInsertDao {
	
	@Autowired
	private updateListMapper ulm;
	
	@Autowired
	private selectListMapper slm;

	
	public List<Map<String, String>> insertWorkConfirm(String selectedDate, String empno) {

		ulm.resetWorkConfirmList(selectedDate, empno);

		return slm.getWorkNotConfirmList(selectedDate, empno);
	}
	
}
