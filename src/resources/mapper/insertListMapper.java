package resources.mapper;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

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
	//work
	public void InsertBusinessLog(HashMap<String, String> businesslog);//Work Business Data Insert
	public void setDailyworkList(HashMap<String, String> info);

	//Attend
	public void InsertAttendData(HashMap<String, String> attendDPlus);//Insert Attend Data
	public void InsertAttendCode(HashMap<String, String> attendCPlus);//Insert Attend Code
	
	//client
	public void InsertClientInfo(HashMap<String, String> CLIENT_INFO);
	public void InsertNameCardInfo(HashMap<String, String> NAMECARD_INFO);
	
	//approval
	public void putApprovalPath(HashMap<String, String> approval_path);
	public void InsertApprovalData(HashMap<String, String> approval_data);

	public void InsertApprovalWrite(String approval_write);
	
	
	
	
	
	

	
	public void empPayInfoAdd(Map<String, String> payinfo);

	//public void setDailyworkList(Map<String, String> info);
	
	public void setPersonalPayList(HashMap<String, String> personal_data);
	
	public void setAttendAddList(HashMap<String, Integer> attendplus);
	
	public void setSalaryCalc(@Param("report") String report, @Param("title") String title);
	
	public void setChatlog(Map<String, String> log);

	public void setRoom(Map<String, String> chatroom_data);
	
	public void setParticipent(Map<String, String> tempor);
	
}

