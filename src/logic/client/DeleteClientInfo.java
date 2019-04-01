package logic.client;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.client.DeleteClientInfoDao;

@Service("DeleteClientInfo")
public class DeleteClientInfo {
	@Autowired
	private DeleteClientInfoDao dcid;
	
	public List<Map<String,String>> deleteClientInfo(Integer CLIENT_CODE){
		
		return dcid.callDeleteClientInfo(CLIENT_CODE);
	}


}
