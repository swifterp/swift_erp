package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.Approval_Controller;
import controller.Attend_Controller;
import controller.Customer_Controller;
import controller.Emp_Controller;
import controller.Pay_Controller;
import controller.Welcome_Controller;
import controller.Work_Controller;

@Configuration
public class ControllerConfig {
	
	@Bean
	public Welcome_Controller welcome_Controller() {
		return new Welcome_Controller();
	}
	
	@Bean
	public Approval_Controller approval_Controller() {
		return new Approval_Controller();
	}
	
	@Bean
	public Attend_Controller attend_Controller() {
		return new Attend_Controller();
	}
	
	@Bean
	public Customer_Controller customer_Controller() {
		return new Customer_Controller();
	}
	
	@Bean
	public Emp_Controller emp_Controller() {
		return new Emp_Controller();
	}
	
	@Bean
	public Pay_Controller pay_Controller() {
		return new Pay_Controller();
	}
	
	@Bean
	public Work_Controller work_Controller() {
		return new Work_Controller();
	}

}
