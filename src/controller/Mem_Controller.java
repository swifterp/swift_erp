package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import logic.mem.MemLogic;

@Controller
@RequestMapping("/mem")
public class Mem_Controller {
	@Autowired
	private MemLogic ml;
	
	@RequestMapping("/add")
	public String addMem(Model model
						,@RequestParam HashMap<String, String> memPlus) {
		ml.memAddDao(memPlus);
		return "mem/login";
	}

	/*
	@RequestMapping("/login")
	public String login(Model model
						,@RequestParam HashMap<String, String> memLogin) {
		ml.login(memLogin);
		return "welcome/welcome";
	}
	*/
	//濡쒓렇�씤 泥섎━
    @RequestMapping("/login")
    public String login(@RequestParam HashMap<String,String> memLogin,
    		HttpServletRequest req, RedirectAttributes rttr){
    	HttpSession session = req.getSession();
    	String mem_name = ml.login(memLogin);
        if (mem_name == null) { // 濡쒓렇�씤 �떎�뙣
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg","false");
        } else { // 濡쒓렇�씤 �꽦怨�
            session.setAttribute("member", mem_name);
        }
        return "welcome/welcome";
    }
    
    //濡쒓렇�븘�썐 泥섎━
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session){
        ml.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("mem/login");
        mav.addObject("msg", "logout");
        return mav;
    }
    
    @RequestMapping("/idCheck")
    @ResponseBody
    public Map<Object, Object> idCheck(@RequestBody String mem_email_id) {
        
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        count = ml.idCheck(mem_email_id);
        map.put("cnt", count);
     
        return map;
    }

}