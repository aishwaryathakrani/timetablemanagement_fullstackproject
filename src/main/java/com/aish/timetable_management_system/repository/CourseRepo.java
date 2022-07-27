package com.aish.timetable_management_system.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.aish.timetable_management_system.entity.Course;


public interface CourseRepo  extends JpaRepository<Course,Integer>{
	


}
