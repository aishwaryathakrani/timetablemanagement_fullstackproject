package com.aish.timetable_management_system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aish.timetable_management_system.entity.Faculty;

import com.aish.timetable_management_system.repository.FacultyRepo;
import com.aish.timetable_management_system.exception.FacultyNotFoundException;

import java.util.ArrayList;



	@Service
	public class FacultyService {
		
		@Autowired
	    private FacultyRepo frepo;

		 public String addFaculty(Faculty f) {
		    	frepo.save(f);
		    	return "Added!";
		    }
		   
		public ArrayList<Faculty> viewAllFaculty() {
	        return (ArrayList<Faculty>)frepo.findAll();
	    }
	     
	     
	    public Faculty viewFaculty(int fid) {

	    	try {
		    	Faculty f = frepo.findById(fid).orElseThrow(FacultyNotFoundException::new);
		    	return f;
	    	}
	    	catch(FacultyNotFoundException e) {
	    		return null;
	    	}
	    }
		public String updateFaculty(Faculty f1)
		{
			try {
				Faculty f  = frepo.findById(f1.getFid()).orElse(null);
				if(f!=null)
				{
					frepo.delete(f);
					frepo.save(f1);
					return "Updated..";
				}
				else {
					throw new FacultyNotFoundException();
			    }
			}			
			catch(FacultyNotFoundException e)
			{
				return e.toString();
			}
		}	
		public String deleteFaculty(int fid)
		{
			try{
				Faculty f  = frepo.findById(fid).orElse(null);
			
				if(f!=null)
				{
					frepo.delete(f);
					return "faculty deleted";
				}
				else
				{
					throw new FacultyNotFoundException();

				}
			}
			
			catch(FacultyNotFoundException e)
			{
				return e.toString();
			}
			
		}
	}
		

	

