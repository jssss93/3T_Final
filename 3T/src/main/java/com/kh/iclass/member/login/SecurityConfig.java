package com.kh.iclass.member.login;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;

public class SecurityConfig {
	
	protected void configure(HttpSecurity http) throws Exception {
	    http
	        .formLogin()
	            .loginPage("/login")
	            .successHandler(new LoginSuccessHandler("/"))       // 이 부분이 중요.
	            .permitAll()
	            
	    ;
	}


}
