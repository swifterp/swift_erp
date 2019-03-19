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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	//로그인 처리
    @RequestMapping("/login")
    public String login(@RequestParam HashMap<String,String> memLogin,
    		HttpServletRequest req, RedirectAttributes rttr){
    	HttpSession session = req.getSession();
    	String mem_name = ml.login(memLogin);
        if (mem_name == null) { // 로그인 실패
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg",false);
        } else { // 로그인 성공
            session.setAttribute("member", mem_name);
        }
        return "welcome/welcome";
    }
    
    //로그아웃 처리
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session){
        ml.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("mem/login");
        mav.addObject("msg", "logout");
        return mav;
    }
}