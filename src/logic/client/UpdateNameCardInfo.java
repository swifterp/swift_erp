package logic.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.client.InsertNameCardInfoDao;
import dao.client.UpdateNameCardInfoDao;


@Service("/UpdateNameCardInfo")
public class UpdateNameCardInfo {
	
	@Autowired
	private UpdateNameCardInfoDao unid;
	
	public List<Map<String,String>> UpdateNameCardInfo(HashMap<String,String> NAMECARD_INFO){
		
		return unid.UpdateNameCardInfo(NAMECARD_INFO);
	}

}
