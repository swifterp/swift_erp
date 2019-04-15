package dao.work;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.net.aso.p;
import resources.mapper.selectListMapper;

@Repository("InsertWorkStartEndDao")
public class InsertWorkStartEndDao {
	
	@Autowired 
	private selectListMapper slm;
	
	public String WriteWorkStart (int EMPNO) {
		
		//ilm.InsertBusinessLog(businesslog);
		
		Map<String,String> P_EMPNO = new HashMap<String,String>();
		P_EMPNO.put("EMPNO",String.valueOf(EMPNO));
		slm.WriteWorkStart(P_EMPNO);
		return P_EMPNO.get("msg");
		
	}
	public String WriteWorkEnd (int EMPNO) {
		
		//ilm.InsertBusinessLog(businesslog);
		
		Map<String,String> P_EMPNO = new HashMap<String,String>();
		P_EMPNO.put("EMPNO",String.valueOf(EMPNO));
		slm.WriteWorkEnd(P_EMPNO);
		return P_EMPNO.get("msg");
		
	}
	
	

}
