package com.ems.model;

import org.springframework.stereotype.Component;

import javax.validation.constraints.*;

@Component
public class Employee {
    private int eId;
//    @NotBlank(message = " * name can't be blank ")
 /*   @Min(value = 3, message = "* your name should have atleast 3 character")*/ // we can use this attribute in age or anything here also no problem but we have @Size annotation for this
//    @Size(min=3 , max = 15,message = "* your name should have minimum 3 and maximum 15 character")
/*    @Pattern(regexp = "^[a-zA-Z0-9]{6,12}$",
            message = "username must be of 6 to 12 length with no special characters")*/

    @NotBlank(message = " * name can't be blank ")
    private String name;
    private  String dob;
    private String  gender;
    @NotBlank(message = " * Address can't be blank ")
    private String address;
    private String city;
    private String state;
    private String email;
    private String password;



    public int geteId() {
        return eId;
    }

    public void seteId(int eId) {
        this.eId = eId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "eId=" + eId +
                ", name='" + name + '\'' +
                ", dob='" + dob + '\'' +
                ", gender='" + gender + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
