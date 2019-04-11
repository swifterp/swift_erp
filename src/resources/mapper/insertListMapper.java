package resources.mapper;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface insertListMapper {
	
	public void memAdd(HashMap<String, String> memPlus);
	
	public void empAdd(HashMap<String, Integer> empPlus);
	
	public void empPayInfoAdd(Map<String, String> payinfo);
	
	public void appointAdd(HashMap<String, String> appointAdd);
	
	public void deptAdd(HashMap<String, String> deptPlus);
	
	public void setUnderyearList(HashMap<String, Integer> percentage);

	public void setDailyworkList(Map<String, String> info);
	
	public void setPersonalPayList(HashMap<String, String> personal_data);
	
	public void InsertBusinessLog(HashMap<String, String> businesslog);
	
	public void setAttendAddList(HashMap<String, Integer> attendplus);
	
	public void setSalaryCalc(@Param("report") String report, @Param("title") String title);
	
	public void setChatlog(Map<String, String> log);

	public void setRoom(Map<String, String> chatroom_data);
	
	public void setParticipent(Map<String, String> tempor);
	
}

