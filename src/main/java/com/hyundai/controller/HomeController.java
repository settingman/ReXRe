package com.hyundai.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */

@Slf4j
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws InterruptedException{

		logger.info("Welcome home! The client locale is {}.", locale);
		log.info("hi");
		log.trace("Hi I'm {} log", "TRACE");
        log.debug("Hi I'm {} log", "DEBUG");
        log.info("Hi I'm {} log", "INFO");
        log.warn("Hi I'm {} log", "WARN");
        log.error("Hi I'm {} log", "ERROR");
        Thread.sleep(1000);
		
		System.out.println("12");

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		return "home";
	}

}
