package com.acorn.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AcornController {
   
    @RequestMapping("/person")
    public String showPerson(HttpServletRequest request) {
        String personToday="세종대왕";
       
        request.setAttribute( "personToday" , personToday);
       
        return "person";
    }
    
  
    @RequestMapping("/test/friend")
    public ModelAndView friends(ModelAndView mView) {
       
        List<String> names=new ArrayList<String>();
        names.add("김구라");
        names.add("해골");
        names.add("원숭이");

        mView.addObject("names", names);
        mView.setViewName("test/friend");
       
        return mView ;
    }
    
   @ResponseBody
    @RequestMapping("/test/json")
    public Map<String, Object> json(){
        Map<String, Object> map=new HashMap<>();
       
        map.put("num", 1);
        map.put("name", "김구라");
        map.put("isMan", "true");

        return map;
    }   
   
   @RequestMapping("/users/login")
   public String login(String email, String password) {
      
       //입력한 이메일과 비밀번호를 콘솔창에 출력해 보세요.
       //
      
       return "login";
   }
}
