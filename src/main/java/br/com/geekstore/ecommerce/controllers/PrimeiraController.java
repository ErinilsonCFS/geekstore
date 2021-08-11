package br.com.geekstore.ecommerce.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PrimeiraController {
			
	@RequestMapping ("/teste")
	public String teste() {
		return "index";
		
	}
	

}
