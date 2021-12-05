package com.employeeproject.database;

import com.employeeproject.entities.Employee;
import com.employeeproject.entities.Log;
import java.util.ArrayList;

public interface IDatabaseOperation {
    void addEmplooye(String name, String surname, String telNumber, String eMail, String tcNumber, String birthdayDay, String birthdayMonth, String birthdayYear,
    String adressCity, String adressInfo, String department, String salary, String id, String working);
    void deleteEmplooye(String id);
    ArrayList<Employee> searchEmplooye();
    boolean login(String userName, String password);
    void loging(String date, String operation);
    ArrayList<Log> logsHistory();
}
