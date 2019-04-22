package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("WorkConfirmSelectDao")
public class WorkConfirmSelectDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectWorkConfirmList(String selectedDate, String empno, Integer classify) {
		if(classify == 1) {
			return slm.getWorkNotConfirmList(selectedDate, empno);
		} else {
			return slm.getWorkConfirmList(selectedDate, empno);
		}
	}
	
}
