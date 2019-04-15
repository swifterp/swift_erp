package logic.work;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.InsertWorkStartEndDao;


@Service("InsertWorkStartEnd")
public class InsertWorkStartEnd {
	
	@Autowired
	private InsertWorkStartEndDao iwd;
	
	public String writeWorkStart(int EMPNO) {
		
		return iwd.WriteWorkStart(EMPNO);
		
	}
	
	public String writeWorkEnd(int EMPNO) {
		
		return iwd.WriteWorkEnd(EMPNO);
		
	}

}
