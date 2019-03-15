package resources.mapper;

import java.util.HashMap;

public interface updateListMapper {

	public void resetUnderyearList(HashMap<String, Integer> percentage);
	
	//attend_no와 정보들을 받아서 업데이트 처리하기 위함
	public void resetAttendList(HashMap<String, String> attendInsert);
	
}