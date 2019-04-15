package dao.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("UpdateClientInfoDao")
public class UpdateClientInfoDao {
	
	@Autowired
	private updateListMapper ulm;
	
	@Autowired 
	private selectListMapper slm;
	

	public List<Map<String, String>> UpdateClientInfo(HashMap<String, String> CLIENT_INFO) {
		// TODO Auto-generated method stub
		
		ulm.UpdateClientInfo(CLIENT_INFO);
		
		return slm.getClientInfoList();
	}

}
