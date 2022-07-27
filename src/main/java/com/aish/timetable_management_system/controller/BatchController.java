package com.aish.timetable_management_system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aish.timetable_management_system.entity.Batch;
import com.aish.timetable_management_system.service.BatchService;


@Controller
public class BatchController {
@Autowired
BatchService bsv;

@RequestMapping("home")
public String home()
{
	return "home.jsp";
}

@RequestMapping("addBatch")
@ResponseBody
public String addBatch(Batch b)
{
	return bsv.addBatch(b);
}

@RequestMapping("viewBatch")
@ResponseBody
public ModelAndView viewBatch(int bid)
{
	ModelAndView mvc = new ModelAndView();
	mvc.setViewName("viewAllBatch.jsp");
	mvc.addObject("mode", "single");
	
	Batch b = bsv.viewBatch(bid);
	if(b != null)
	{
			mvc.addObject("flag", true);
			mvc.addObject("result",b);
			return mvc;
	}
	
	mvc.addObject("flag", false);
	mvc.addObject("result", "Batch not found...");
	return mvc;
}

@RequestMapping("viewAllBatch")
@ResponseBody
public ModelAndView viewAllBatch()
{
	ModelAndView mvc = new ModelAndView();
	mvc.setViewName("viewAllBatch.jsp");
	mvc.addObject("mode", "list");
	mvc.addObject("result",bsv.viewAllBatch());
	return mvc;
}


@RequestMapping("updateBatch")
@ResponseBody
public String updateBatch(Batch b)
{
	return bsv.updateBatch(b);
}

@RequestMapping("deleteBatch")
@ResponseBody
public String deleteBatch(int bid)
{
	return bsv.deleteBatch(bid);
}

@RequestMapping("assignFaculty")
@ResponseBody
public String assignFaculty(int bid, int fid) 
{
	return bsv.assignFaculty(bid, fid);
}

}
