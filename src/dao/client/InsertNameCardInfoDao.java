package dao.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("InsertNameCardInfoDao")
public class InsertNameCardInfoDao {
	
	@Autowired
	private insertListMapper ilm;
	
	@Autowired 
	private selectListMapper slm;
	
	public List<Map<String, String>> InsertNameCardInfo (HashMap<String,String> NAMECARD_INFO) {
	
	ilm.InsertNameCardInfo(NAMECARD_INFO);
	
	return slm.getNameCardInfoList();
	}

}
