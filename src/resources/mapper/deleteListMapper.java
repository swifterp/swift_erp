package resources.mapper;

import java.util.List;
import java.util.Map;

public interface deleteListMapper {
	public int getList();
	public int setList();
	/*사원삭제*/
	public List<Map<String, String>> getEmpDel(String empno);
}
