package com.example.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class appController {
	
	
	@GetMapping("regular")
	public ResponseEntity getHome() {
		return new ResponseEntity("Hi I am a Regular Member!!",HttpStatus.OK);
		
	}
	@GetMapping("premium")
	public ResponseEntity getHomePremium() {
		return new ResponseEntity("Hi I am a Premium Member!!",HttpStatus.OK);
		
	}
	
	

}
