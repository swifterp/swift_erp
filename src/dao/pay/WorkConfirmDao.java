package dao.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.updateListMapper;

@Repository("WorkConfirmDao")
public class WorkConfirmDao {
	
	@Autowired
	private updateListMapper ulm;
	
	public void updateWorkConfirmCancel(String empno, String selectedDate) {
		
		ulm.resetWorkConfirmCancel(empno, selectedDate);

	}
	
}