package com.demo.EmployeeDirectory.Repository;


import org.springframework.data.jpa.repository.JpaRepository;
import com.demo.EmployeeDirectory.PathModel.Model;

public interface Repository extends JpaRepository<Model, Integer> {
}
