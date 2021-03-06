package logic.client;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.client.NameCardInfoDao;

@Service("SelectNameCardInfo")
public class SelectNameCardInfo {
	
	@Autowired
	private NameCardInfoDao nid;
	
	public List<Map<String,String>> callNameCardInfoDao(){
		return nid.selectNameCardInfo();
	}

	public Map<String,String> callNameCardInfoDao(int NAMECARD_CODE) {
		// TODO Auto-generated method stub
		return nid.selectNameCardInfo(NAMECARD_CODE);
	}
}
