package com.aish.timetable_management_system.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aish.timetable_management_system.entity.Batch;
import com.aish.timetable_management_system.entity.Course;
import com.aish.timetable_management_system.entity.Faculty;
import com.aish.timetable_management_system.repository.BatchRepo;
import com.aish.timetable_management_system.repository.FacultyRepo;
import com.aish.timetable_management_system.repository.CourseRepo;
import com.aish.timetable_management_system.exception.BatchNotFoundException;
import com.aish.timetable_management_system.exception.CourseNotFoundException;
import com.aish.timetable_management_system.exception.FacultyNotFoundException;

	

	@Service
	public class BatchService {
		
		@Autowired
	    private BatchRepo bchrepo;
		@Autowired
	    private FacultyRepo frepo;
		@Autowired
		private CourseRepo crepo;

		
		public ArrayList<Batch> viewAllBatch() {
			return (ArrayList<Batch>) bchrepo.findAll();
	    }
	     
		public String addBatch(Batch b) {
	    	bchrepo.save(b);
	    	return "Added";
	    }
	    
		public Batch viewBatch(int bid) {
	    	try {
		    	Batch b = bchrepo.findById(bid).orElseThrow(BatchNotFoundException::new);
		    	return b;
	    	}
	    	catch(BatchNotFoundException e) {
	    		return null;
	    	}
	    }
	    
		public String updateBatch(Batch b1)
		{
			try {
				 Batch b  = bchrepo.findById(b1.getBid()).orElse(null);
				if(b!=null)
				{
					bchrepo.delete(b);
					bchrepo.save(b1);
					return "Updated..";
				}
				else {
					throw new BatchNotFoundException();
			    }
			}			
			catch(BatchNotFoundException e)
			{
				return e.toString();
			}		
	}
		
		public String deleteBatch(int bid)
		{
			try{
				Batch b  = bchrepo.findById(bid).orElse(null);
			
				if(b!=null)
				{
					bchrepo.delete(b);
					return "Batch deleted";
				}
				else
				{
					throw new BatchNotFoundException();

				}
			}
			
			catch(BatchNotFoundException e)
			{
				return e.toString();
			}
		}
		
		public String assignFaculty(int bid,int fid) 
		{
			try {
			Faculty f = frepo.findById(fid).orElseThrow(FacultyNotFoundException::new);
			Batch b = bchrepo.findById(bid).orElseThrow(BatchNotFoundException::new);
			Course c = crepo.findById(b.getCid()).orElseThrow(CourseNotFoundException::new);

			if((f.getSpecialization().equalsIgnoreCase(c.getCoursename()))&& (f.getCurrentLoad()<3)) {
				int curLoad = f.getCurrentLoad()+1;
				f.setCurrentLoad(curLoad);
				
				return "Faculty  Assigned";
			}
			
			else {
				return " assign another faculty";
			}
			}
			catch(BatchNotFoundException e)
			{
				return e.toString();
			}
			catch(FacultyNotFoundException e)
			{
				return e.toString();
			}
			catch(CourseNotFoundException e)
			{
				return e.toString();
			}

			
 
		}


			
}



	

