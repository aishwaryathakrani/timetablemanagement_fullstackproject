package com.aish.timetable_management_system.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.aish.timetable_management_system.entity.Batch;


public interface BatchRepo extends JpaRepository<Batch,Integer>{
}
