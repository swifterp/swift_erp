package resources.mapper;

import java.util.HashMap;

public interface insertListMapper {

	public void setUnderyearList(HashMap<String, Integer> percentage);
	public void setDailyworkList(HashMap<String, String> info);
	
	public void InsertBusinessLog(HashMap<String, String> businesslog);
	
	
	
	public void setAttendAddList(HashMap<String, Integer> attendplus);
	
}