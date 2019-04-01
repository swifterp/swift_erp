package dao.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("InsertClientInfoDao")
public class InsertClientInfoDao {
	
	@Autowired
	private insertListMapper ilm;
	
	@Autowired 
	private selectListMapper slm;
	
	public List<Map<String, String>> InsertClientInfo (HashMap<String,String> CLIENT_INFO) {
	
	ilm.InsertClientInfo(CLIENT_INFO);
	
	return slm.getClientInfoList();
	}

}
