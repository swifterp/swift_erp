package resources.mapper;

import java.util.List;
import java.util.Map;

public interface deleteListMapper {

	public int getEmpDel(Integer emp_appoint_num);
	
	public void getAppointDel(Integer emp_appoint_num);

	public int getDeptDel(Integer deptno);
	
	public Integer killAllowanceList(Integer allowance_no);
	
///////Attend Start
	public int setAttendDeleteData(Integer attend_no);//Delete Attend Data
	public int setDeleteAttendCode(Integer attend_code);//Delete Attend Code
///////Attend End
	
	public void DeleteNameCardInfo(Integer NAMECARD_CODE);
	
	public void DeleteClientInfo(Integer CLIENT_CODE);




}
