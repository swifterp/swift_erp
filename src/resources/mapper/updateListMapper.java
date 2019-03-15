package resources.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface updateListMapper {
	public void resetUnderyearList(HashMap<String, Integer> percentage);
	
	/*사원수정*/
	public void getEmpUpd(HashMap<String, String> empUpd);
}