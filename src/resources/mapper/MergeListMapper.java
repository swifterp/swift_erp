package resources.mapper;

import java.util.Map;

public interface MergeListMapper {
	public void resetPersonalPayList(Map<String, String> personal_data);
	public void resetDailyworkList(Map<String, String> info);
	public void insertAllowanceItem(Map<String, String> info);
	public void insertDeductionItem(String name);
	public void empPayInfoAdd(Map<String, String> info);
	public void resetPersonalDeducList(Map<String, String> personal_data_deduction);
}