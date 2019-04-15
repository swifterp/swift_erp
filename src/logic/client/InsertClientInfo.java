package logic.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.client.InsertClientInfoDao;

@Service("/InsertClintInfo")
public class InsertClientInfo {
	
	@Autowired
	private InsertClientInfoDao icid;
	
	public List<Map<String,String>> writeClientInfo(HashMap<String,String> CLIENT_INFO){
		
		return icid.InsertClientInfo(CLIENT_INFO);
	}

}
