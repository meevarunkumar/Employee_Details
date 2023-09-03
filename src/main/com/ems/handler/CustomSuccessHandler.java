package com.ems.handler;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

public class CustomSuccessHandler implements AuthenticationSuccessHandler {

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {


        if(authentication.isAuthenticated()){

            request.getSession().setMaxInactiveInterval(10);

            Collection<? extends GrantedAuthority> authorites= authentication.getAuthorities();

            for(GrantedAuthority grantedAuthority: authorites)
            {
                if(grantedAuthority.getAuthority().equals("ROLE_USER")){
                    redirectStrategy.sendRedirect(request,response,"/user");
                }
                else if(grantedAuthority.getAuthority().equals("ROLE_ADMIN")){
                    redirectStrategy.sendRedirect(request,response,"/admin");
                }
                else {
                    redirectStrategy.sendRedirect(request,response,"/dummy");
                }
            }
        }
    }
}
