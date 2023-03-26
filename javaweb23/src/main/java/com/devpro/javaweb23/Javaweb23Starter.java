package com.devpro.javaweb23;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//Annotation
//Nhận biết là 1 ứng dụng Spring-Boot.
@SpringBootApplication
public class Javaweb23Starter {

	public static void main(String[] args) {
		// chạy ứng dụng Spring-Boot với class StartServer
		SpringApplication.run(Javaweb23Starter.class, args);
	}
	
}
