package com.ecombook.entities; 

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

 
@Entity

public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10 , name = "user_id")
    private int userId;
    @Column(length = 100 , name = "user_name")
    private String userName;
    @Column(length = 100 , name = "user_email")
    private String userEmail;
    @Column(length = 100 , name = "user_password")
    private String userPassword;
    @Column(length = 100 , name = "user_phone")
    private String userPhone;
    @Column(length = 100 , name = "user_pic")
    private String userPic;
    @Column(length = 100 , name = "user_address")
    private String userUserAddress;
    @Column(length = 100 , name = "user_type")
    private String userType;
    
    
    //default constructor
    public User() {
    }
    
     //Paramterize constructor

    public User(int userId, String userName, String userEmail, String userPassword, String userPhone, String userPic, String userUserAddress , String userType) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userUserAddress = userUserAddress;
        this.userType=userType;
    }
     //default constructor without id

    public User(String userName, String userEmail, String userPassword, String userPhone, String userPic, String userUserAddress,String userType) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userUserAddress = userUserAddress;
        this.userType=userType;
    }
    
    //Getter and setter

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserPic() {
        return userPic;
    }

    public void setUserPic(String userPic) {
        this.userPic = userPic;
    }

    public String getUserUserAddress() {
        return userUserAddress;
    }

    public void setUserUserAddress(String userUserAddress) {
        this.userUserAddress = userUserAddress;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
    
    
    //To string method 

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", userPic=" + userPic + ", userUserAddress=" + userUserAddress + '}';
    }
    
    
    
}
