package resources.mapper;

import java.util.HashMap;

public interface updateListMapper {

	public void resetUnderyearList(HashMap<String, Integer> percentage);
	
	//attend_no�� �������� �޾Ƽ� ������Ʈ ó���ϱ� ����
	public void resetAttendList(HashMap<String, String> attendInsert);
	
}