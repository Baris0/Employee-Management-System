package com.employeeproject.database;

import com.employeeproject.entities.Employee;
import com.employeeproject.entities.Log;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MySqlDatabaseOperation implements IDatabaseOperation{
    Connection connection = null;
    Statement statement = null;
    PreparedStatement preparedStatement = null;
    
    public MySqlDatabaseOperation(){
        String url = "jdbc:mysql://" + Database.HOST + ":" + Database.PORT + "/" + Database.DB_NAME;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MySqlDatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            connection = DriverManager.getConnection(url, Database.USER_NAME, Database.PASSWORD);
            
        } catch (SQLException ex) {
            Logger.getLogger(MySqlDatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    @Override
    public boolean login(String userName, String password){
        
        String sorgu = "Select * From admins where Username = ? and Password = ?";
        
        try {
            preparedStatement = connection.prepareStatement(sorgu);
            
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSet.next();
 
        } catch (SQLException ex) {
            Logger.getLogger(MySqlDatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
     
    }
    
    @Override
    public void addEmplooye(String name, String surname, String telNumber, String eMail, String tcNumber, String birthdayDay, String birthdayMonth, String birthdayYear, String adressCity, String adressInfo, String department, String salary, String id, String working) {
        try {
            statement = connection.createStatement();
            
            String sorgu = "Insert Into employee (name,surname,telno,email,tcno,birthday,adress,department,salary,id,working) VALUES(" + "'" + name + "'," + "'" + surname + "'," + "'" + telNumber + "'," + "'" + eMail + "'," + "'" + tcNumber + "'," + "'" + birthdayDay+birthdayMonth+birthdayYear + "'," + "'" + adressCity+adressInfo + "'," + "'" + department + "'," + "'" + salary + "'," + "'" + id + "'," + "'" + working + "')";
            statement.executeUpdate(sorgu);
            
        } catch (SQLException ex) {
            Logger.getLogger(MySqlDatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public ArrayList<Employee> searchEmplooye() {
        ArrayList<Employee> employees = new ArrayList<Employee>();
        
        try {
            statement = connection.createStatement();
            String sorgu = "Select * From employee";
            ResultSet resultSet = statement.executeQuery(sorgu);
            
            while(resultSet.next()){
                String name = resultSet.getString("name");
                String surname = resultSet.getString("surname");
                String telNo = resultSet.getString("telno");
                String eMail = resultSet.getString("email");
                String tcNo = resultSet.getString("tcno");
                String birthday = resultSet.getString("birthday");
                String adress = resultSet.getString("adress");
                String department = resultSet.getString("department");
                String salary = resultSet.getString("salary");
                String id = resultSet.getString("id");
                String working = resultSet.getString("working");
                
                employees.add(new Employee(name, surname, telNo, eMail, tcNo, birthday, adress, department, salary, id, working));
            }
            return employees;
                       
        } catch (SQLException ex) {
            Logger.getLogger(MySqlDatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    @Override
    public void deleteEmplooye(String id) {
        try {
            statement = connection.createStatement();
            String sorgu = "Delete From employee Where id = " + id;
            statement.executeUpdate(sorgu);
        } catch (SQLException ex) {
            Logger.getLogger(MySqlDatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
        }  
    }
    
    @Override
    public void loging(String date, String operation) {
        
        try {
            statement = connection.createStatement();
            
            String sorgu = "Insert Into loging (date,operation) VALUES(" + "'" + date + "'," + "'" + operation + "')";
            
            statement.executeUpdate(sorgu);
            
        } catch (SQLException ex) {
            Logger.getLogger(MySqlDatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
   
    }
    
     @Override
    public ArrayList<Log> logsHistory() {
        ArrayList<Log> logs = new ArrayList<Log>();
        
        try {
            statement = connection.createStatement();
            String sorgu = "Select * From loging";
            ResultSet resultSet = statement.executeQuery(sorgu);
            
            while(resultSet.next()){
                String date = resultSet.getString("date");
                String operation = resultSet.getString("operation");
                
                logs.add(new Log(date, operation));
                
            }
            return logs;
            
        } catch (SQLException ex) {
            Logger.getLogger(MySqlDatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
               
    }
    
     public static void main(String[] args) {
        
        MySqlDatabaseOperation databaseOperation = new MySqlDatabaseOperation();
        
        
    }

   
}
