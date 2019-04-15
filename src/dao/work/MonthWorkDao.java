package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("MonthWorkDao")
public class MonthWorkDao {
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String,String>> selectMonthWork(String search_month){
		
		return slm.getMonthWorkList(search_month);
	}

}
