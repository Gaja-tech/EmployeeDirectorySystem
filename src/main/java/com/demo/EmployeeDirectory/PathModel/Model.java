package com.demo.EmployeeDirectory.PathModel;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "employee")
public class Model {

    @Id
    private int id;

    private String name;
    private String role;
    private String email;
    private String contactNo;
    private int age;
    private double salary;

    // ✅ Default constructor (required)
    public Model() {}

    // Optional: Constructor with parameters (if needed)
    public Model(int id, String name, String role, String email, String contactNo, int age, double salary) {
        this.id = id;
        this.name = name;
        this.role = role;
        this.email = email;
        this.contactNo = contactNo;
        this.age = age;
        this.salary = salary;
    }

    // ✅ Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getContactNo() { return contactNo; }
    public void setContactNo(String contactNo) { this.contactNo = contactNo; }

    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }

    public double getSalary() { return salary; }
    public void setSalary(double salary) { this.salary = salary; }
}
