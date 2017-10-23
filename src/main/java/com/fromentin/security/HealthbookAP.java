package com.fromentin.security;

import com.fromentin.service.HealthbookServiceImpl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

@Component
public class HealthbookAP implements AuthenticationProvider {

    @Autowired
    UserService userService;
    @Autowired
    HealthbookServiceImpl healthbook_service;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = authentication.getName();
        String password = (String) authentication.getCredentials();

        try {
            HealthbookUser user = userService.loadUserByUsername(username);
            HealthbookRole r = new HealthbookRole();

            List<HealthbookRole> roles = new ArrayList<HealthbookRole>();
            roles.add(r);
            user.setAuthorities(roles);
            Collection<? extends GrantedAuthority> authorities = user.getAuthorities();
            return new UsernamePasswordAuthenticationToken(user, password, authorities);
        } catch (Exception e) {
            System.out.println("ERROR : " + e);
        }
        return null;
    }

    @Override
    public boolean supports(Class<?> arg0) {
        return true;
    }
}
