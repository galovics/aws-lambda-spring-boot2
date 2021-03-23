package com.arnoldgalovics.blog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@EnableAutoConfiguration
@Import({BookController.class})
public class AwsLambdaSpringBoot2Application {
	public static void main(String[] args) {
		SpringApplication.run(AwsLambdaSpringBoot2Application.class, args);
	}
}
