package resources.mapper;

import java.util.List;
import java.util.Map;

public interface selectListMapper {
	public List<Map<String, String>> getList();
	
	public List<Map<String, String>> getAllowanceList();
}
