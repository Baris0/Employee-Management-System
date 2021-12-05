package com.employeeproject.entities;

public class Log {
    private String date;
    private String operation;

    public Log(String date, String operation) {
        this.date = date;
        this.operation = operation;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }
    
    
    
}
