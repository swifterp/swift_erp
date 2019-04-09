package resources.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface insertListMapper {
	//member
	public void memAdd(HashMap<String, String> memPlus);	
	
	//employee
	public void empAdd(HashMap<String, Integer> empPlus);	
	public void appointAdd(HashMap<String, String> appointAdd);
	public void deptAdd(HashMap<String, String> deptPlus);	
	public int getRankAdd(HashMap<String, String> rankPlus);
	public int getDutyAdd(HashMap<String, String> dutyPlus);
	public int getBankAdd(HashMap<String, String> bankPlus);
	
	//pay	
	public void setUnderyearList(HashMap<String, Integer> percentage);
	public void setDailyworkList(HashMap<String, String> info);	
	public void InsertBusinessLog(HashMap<String, String> businesslog);
	
	//Attend
	public void InsertAttendData(HashMap<String, String> attendDPlus);//Insert Attend Data
	public void InsertAttendCode(HashMap<String, String> attendCPlus);//Insert Attend Code
	
	//client
	public void InsertClientInfo(HashMap<String, String> CLIENT_INFO);
	public void InsertNameCardInfo(HashMap<String, String> NAMECARD_INFO);
	
	//approval
	public void putApprovalPath(HashMap<String, String> approval_path);
	public void InsertApprovalData(HashMap<String, String> approval_data);
}

