package logic.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.client.InsertNameCardInfoDao;


@Service("/InsertNameCardInfo")
public class InsertNameCardInfo {
	
	@Autowired
	private InsertNameCardInfoDao inid;
	
	public List<Map<String,String>> writeNameCardInfo(HashMap<String,String> NAMECARD_INFO){
		
		return inid.InsertNameCardInfo(NAMECARD_INFO);
	}

}
