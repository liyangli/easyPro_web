package com.bohui

class User {

    String userName
    String password
    String loginName
    boolean flag

    static constraints = {
        userName(blank: false,unique: true,minSize: 4,maxSize: 20)
        password(blank: false)
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", loginName='" + loginName + '\'' +
                ", flag=" + flag +
                ", version=" + version +
                '}';
    }
}
