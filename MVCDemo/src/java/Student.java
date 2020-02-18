/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author jinjason
 */
public class Student {
    private int id;
    private String firstName;
    
    Student() {}
    public Student(int id, String firstName) {
        this.id = id;
        this.firstName = firstName;
    }
    
    public int getId() {
        return id;
    }
    public String getFirstName() {
        return firstName;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public void setFirstName(String firstString) {
        this.firstName = firstName;
    }
}
