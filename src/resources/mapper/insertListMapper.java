package resources.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface insertListMapper {
	
	public void memAdd(HashMap<String, String> memPlus);
	
	public void empAdd(HashMap<String, Integer> empPlus);
	
	public void appointAdd(HashMap<String, String> appointAdd);
	
	public void deptAdd(HashMap<String, String> deptPlus);
	
	public void setUnderyearList(HashMap<String, Integer> percentage);

	public void setDailyworkList(HashMap<String, String> info);
	
	public void InsertBusinessLog(HashMap<String, String> businesslog);
	
///////Attend Start
	public void InsertAttendData(HashMap<String, String> attendDPlus);//Insert Attend Data
	public void InsertAttendCode(HashMap<String, String> attendCPlus);//Insert Attend Code
///////Attend End
	
	public void InsertClientInfo(HashMap<String, String> CLIENT_INFO);
	public void InsertNameCardInfo(HashMap<String, String> NAMECARD_INFO);

}

