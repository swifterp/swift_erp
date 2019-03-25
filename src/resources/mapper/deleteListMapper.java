package resources.mapper;

import java.util.List;
import java.util.Map;

public interface deleteListMapper {

	public int getList();
	public int setList();

	public int getEmpDel(Integer emp_appoint_num);
	
	public void getAppointDel(Integer emp_appoint_num);

	public int getDeptDel(Integer deptno);
	
	public Integer killAllowanceList(Integer allowance_no);
	
	public int setAttendDeleteData(Integer attend_no);

}
