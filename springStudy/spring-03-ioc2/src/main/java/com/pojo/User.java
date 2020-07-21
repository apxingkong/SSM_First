package com.pojo;

/**
 * @author jialin
 */
public class User {
    private String name;

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                '}';
    }

    public User() {
        System.out.println("User的无参构造");
    }

    public void setName(String name) {
        this.name = name;
    }
}
