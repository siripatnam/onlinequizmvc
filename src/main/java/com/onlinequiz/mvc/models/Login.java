package com.onlinequiz.mvc.models;

public class Login {

    int studentId;

    String password;

    public Login() {
    }

    public Login(int studentId, String password) {
        this.studentId = studentId;
        this.password = password;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
