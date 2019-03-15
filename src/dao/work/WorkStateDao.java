package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("WorkStateDao")
public class WorkStateDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String,String>> selectWorkState(){
		
		return slm.getWorkStateList();
	}

}
