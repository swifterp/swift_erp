package resources.mapper;

import java.util.List;
import java.util.Map;

public interface deleteListMapper {

	public int getList();
	public int setList();

	public List<Map<String, String>> getEmpDel(String emp_number);
	public Integer killAllowanceList(Integer allowance_no);

}
