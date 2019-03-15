package logic.client;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.client.ClientInfoDao;

@Service("SelectClientInfo")
public class SelectClientInfo {
	
	@Autowired
	private ClientInfoDao csd;
	
	public List<Map<String,String>> callClientInfoDao(){
		
		return csd.selectClientInfo();
		
	}
}
