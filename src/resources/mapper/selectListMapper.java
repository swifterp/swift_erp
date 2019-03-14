package resources.mapper;

import java.util.List;
import java.util.Map;

public interface selectListMapper {
	public List<Map<String, String>> getList();
	
	public List<Map<String, String>> getAllowanceList();
	public List<Map<String, String>> getDeductionList();
	public List<Map<String, String>> getSalaryCalcList();
	public List<Map<String, String>> getPersonalPayList(String report);
	public List<Map<String, String>> getSpecsList(Integer empno);
	public List<Map<String, String>> getUnderyearList();
	public List<Map<String, String>> getMonthlyempList(String selectedDate);
}
