package com.fromentin.security;

import org.springframework.security.core.GrantedAuthority;

public class HealthbookRole implements GrantedAuthority{
    
    private String name;
    
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public String getAuthority() {
        return this.name;
    }
}
