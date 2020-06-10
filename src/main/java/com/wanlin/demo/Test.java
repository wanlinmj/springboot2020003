package com.wanlin.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: kangwl
 * @Date: 2020/4/5
 * @Version: 1.0
 * @Description: Test ...
 */
@Controller
public class Test {

    @RequestMapping("/test")
    public String test(String name, Model model){
       System.out.println("-=========================   "+ name);
        model.addAttribute("name", name + " 小盆友！");
        return "test";
    }
}
