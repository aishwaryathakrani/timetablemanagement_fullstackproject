package com.aish.timetable_management_system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import  com.aish.timetable_management_system.entity.Faculty;
import  com.aish.timetable_management_system.service.FacultyService;


	@Controller
	public class FacultyController {
	@Autowired
	FacultyService fsv;

	/*@RequestMapping("home")
	public String home()
	{
		return "home.jsp";
	}*/

	@RequestMapping("addFaculty")
	@ResponseBody
	public String addFaculty(Faculty f)
	{
		return fsv.addFaculty(f);
	}

	@RequestMapping("viewFaculty")
	@ResponseBody
	public ModelAndView viewFaculty(int fid)
	{
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("viewAllFaculty.jsp");
		mvc.addObject("mode", "single");
		
		Faculty f= fsv.viewFaculty(fid);
		if(f != null)
		{
				mvc.addObject("flag", true);
				mvc.addObject("result",f);
				return mvc;
		}
		
		mvc.addObject("flag", false);
		mvc.addObject("result", "Faculty not found...");
		return mvc;
	}

	@RequestMapping("viewAllFaculty")
	@ResponseBody
	public ModelAndView viewAllFaculty()
	{
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("viewAllFaculty.jsp");
		mvc.addObject("mode", "list");
		mvc.addObject("result",fsv.viewAllFaculty());
		return mvc;
	}

	@RequestMapping("updateFaculty")
	@ResponseBody
	public String updateFaculty(Faculty f)
	{
		return fsv.updateFaculty(f);
	}

	@RequestMapping("deleteFaculty")
	@ResponseBody
	public String deleteFaculty(int fid)
	{
		return fsv.deleteFaculty(fid);
	}

}


