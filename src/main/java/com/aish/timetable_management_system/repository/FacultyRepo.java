package com.aish.timetable_management_system.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.aish.timetable_management_system.entity.Faculty;


public interface FacultyRepo extends JpaRepository<Faculty,Integer> {

}
