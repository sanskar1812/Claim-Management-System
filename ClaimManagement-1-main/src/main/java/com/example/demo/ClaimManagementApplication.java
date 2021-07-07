package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootApplication
public class ClaimManagementApplication extends WebSecurityConfigurerAdapter {

	public static void main(String[] args) {
		SpringApplication.run(ClaimManagementApplication.class, args);
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication()
			.withUser("Sanskar")
			.password("55555")
			.roles("REGULAR")
			.accountExpired(false)
			.accountLocked(false)
			.credentialsExpired(false)
			.and()
			.withUser("Suraj")
			.password("55555")
			.accountExpired(false)
			.accountLocked(false)
			.credentialsExpired(false)
			.roles("PREMIUM");		
		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.antMatchers("/regular")
			.hasRole("REGULAR")
			.antMatchers("/premium")
			.hasRole("PREMIUM")
			.and()
			.formLogin();
			
	}

	@Bean
	public  PasswordEncoder getPasswordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}
	
	

}
