package com.gseps.lng.operation.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gseps.lng.operation.base.controller.BaseController;
import com.gseps.lng.operation.repository.CityMapper;

@Controller
public class CityController extends BaseController {
    @Autowired
    private CityMapper cityMapper;

    @RequestMapping("/")
    String home(Model model) {
    	logger.info(">>>>>>>>>>>>>>>>> CITY");
        model.addAttribute("city", cityMapper.findByState("CA"));
        return "home";
    }
}