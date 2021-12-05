package com.employeeproject.entities;

public class Employee {
    private String name;
    private String surname;
    private String telNo;
    private String eMail;
    private String tcNo;
    private String birthday;
    private String adress;
    private String department;
    private String salary;
    private String id;
    private String working;

    public Employee(String name, String surname, String telNo, String eMail, String tcNo, String birthday, String adress, String department, String salary, String id, String working) {
        this.name = name;
        this.surname = surname;
        this.telNo = telNo;
        this.eMail = eMail;
        this.tcNo = tcNo;
        this.birthday = birthday;
        this.adress = adress;
        this.department = department;
        this.salary = salary;
        this.id = id;
        this.working = working;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getTelNo() {
        return telNo;
    }

    public void setTelNo(String telNo) {
        this.telNo = telNo;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getTcNo() {
        return tcNo;
    }

    public void setTcNo(String tcNo) {
        this.tcNo = tcNo;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getWorking() {
        return working;
    }

    public void setWorking(String working) {
        this.working = working;
    }
    
    
    
    
    
}
