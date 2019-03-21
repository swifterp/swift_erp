package resources.mapper;

import java.util.List;
import java.util.Map;

public interface deleteListMapper {

	public int getList();
	public int setList();

	public Integer getEmpDel(Integer emp_number);

	public Integer getDeptDel(Integer deptno);
	
	public Integer killAllowanceList(Integer allowance_no);
	
	public int setAttendDeleteData(Integer attend_no);

}
