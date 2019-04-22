package logic.work;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.BusinessLogDao;

@Service("UpdateBusinessLog")
public class UpdateBusinessLog {
	@Autowired
	private BusinessLogDao bld;

//Work Business List Low Update
	public List<Map<String,String>> callupdateBusinessLog(HashMap<String, String> businessdata){
		return bld.UpdateBusinessLog(businessdata);
	}
}
