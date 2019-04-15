package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("WorkTimeDao")
public class WorkTimeDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String,String>> selectWorkTime(String search_day){
		
		return slm.getWorkTimeList(search_day);
	}
}
