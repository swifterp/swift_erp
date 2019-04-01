package logic.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.client.UpdateClientInfoDao;



@Service("/UpdateClientInfo")
public class UpdateClientInfo {
	
	@Autowired
	private UpdateClientInfoDao ucid;
	
	public List<Map<String,String>> UpdateClientInfo(HashMap<String,String> CLIENT_INFO){
		
		return ucid.UpdateClientInfo(CLIENT_INFO);
	}
}