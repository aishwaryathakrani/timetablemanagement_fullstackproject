package com.aish.timetable_management_system.controller;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aish.timetable_management_system.entity.Course;
import com.aish.timetable_management_system.service.CourseService;

@Controller
public class CourseController {
@Autowired
CourseService csv;

/*@RequestMapping("home")
public String home()
{
	return "home.jsp";
}*/

@RequestMapping("addCourse")
@ResponseBody
public String addCourse(Course c)
{
	return csv.addCourse(c);
}


@RequestMapping("viewCourse")
@ResponseBody
public ModelAndView viewCourse(int cid)
{
	ModelAndView mvc = new ModelAndView();
	mvc.setViewName("viewAllCourse.jsp");
	mvc.addObject("mode", "single");
	
	Course c= csv.viewCourse(cid);
	if(c != null)
	{
			mvc.addObject("flag", true);
			mvc.addObject("result",c);
			return mvc;
	}
	
	mvc.addObject("flag", false);
	mvc.addObject("result", "Batch not found...");
	return mvc;
}

@RequestMapping("viewAllCourse")
@ResponseBody
public ModelAndView viewAllCourse()
{
	ModelAndView mvc = new ModelAndView();
	mvc.setViewName("viewAllCourse.jsp");
	mvc.addObject("mode", "list");
	mvc.addObject("flag", true);
	mvc.addObject("result",csv.viewAllCourse());
	return mvc;
}

@RequestMapping("updateCourse")
@ResponseBody
public String updateCourse(Course c)
{
	return csv.updateCourse(c);
}

@RequestMapping("deleteCourse")
@ResponseBody
public String deleteCourse(int cid)
{
	return csv.deleteCourse(cid);
}

}
