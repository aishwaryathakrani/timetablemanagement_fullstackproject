package com.aish.timetable_management_system.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aish.timetable_management_system.entity.Course;
import com.aish.timetable_management_system.repository.CourseRepo;
import com.aish.timetable_management_system.exception.CourseNotFoundException;

@Service
public class CourseService {
	@Autowired
	private CourseRepo crsrepo;
	
	public String addCourse(Course c) {
		crsrepo.save(c);
		return "Added...";
	}
	
	public ArrayList<Course> viewAllCourse(){
		return (ArrayList<Course>)crsrepo.findAll();
	}

	public Course viewCourse(int cid) {
    	try {
	    	Course c = crsrepo.findById(cid).orElseThrow(CourseNotFoundException::new);
	    	return c;
    	}
    	catch(CourseNotFoundException e) {
    		return null;
    	}
    }

	
	public String updateCourse(Course c1)
	{

		try {
			Course c  = crsrepo.findById(c1.getCid()).orElse(null);
			if(c!=null)
			{
				crsrepo.delete(c);
				crsrepo.save(c1);
				return "Updated..";
			}
			else {
				throw new CourseNotFoundException();
		    }
		}			
		catch(CourseNotFoundException e)
		{
			return e.toString();
		}
	}	
	
	public String deleteCourse(int cid)
	{

		try{
			Course c  = crsrepo.findById(cid).orElse(null);
		
			if(c!=null)
			{
				crsrepo.delete(c);
				return "Course deleted";
			}
			else
			{
				throw new CourseNotFoundException();

			}
		}
		
		catch(CourseNotFoundException e)
		{
			return e.toString();
		}
		
	}
	
	
}
