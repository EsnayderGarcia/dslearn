package com.devsuperior.dslearnbds.DTOs;

import java.io.Serializable;

public class UserUpdateDTO implements Serializable {
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
