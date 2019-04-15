package dao.pay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("UnderyearDao")
public class UnderyearDao {
	
	@Autowired
	private updateListMapper ulm;
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> insertUnderyearList(HashMap<String, Integer> percentage) {
		
		ulm.resetUnderyearList(percentage);
		
		return slm.getUnderyearList();
	}
	
	public List<Map<String, String>> selectUnderyearList() {
		
		return slm.getUnderyearList();
	}
	
}
