package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("EmpStateDao")
public class EmpStateDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String,String>> selectEmpState(String EMP_NAME){
		
		return slm.getEmpStateList(EMP_NAME);
	}


}
