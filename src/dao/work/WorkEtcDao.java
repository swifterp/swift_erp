package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("WorkEtcDao")
public class WorkEtcDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String,String>> selectWorkEtc(){
		
		return slm.getWorkEtcList();
	}


}
