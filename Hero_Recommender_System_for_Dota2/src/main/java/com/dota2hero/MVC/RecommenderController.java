package com.dota2hero.MVC;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class RecommenderController {

	// private static final Logger logger =
	// LoggerFactory.getLogger(RecommenderController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("player", new Player());
		return "mainPage";
	}

	// submit accountid
	@RequestMapping(value = "/AccountIdValid", method = RequestMethod.POST)
	public String AccountIdvalid(@ModelAttribute("player") Player player,
			BindingResult bindingResult) {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"Beans.xml");
		MatchJDBCTemplate matchjdbctemplate = (MatchJDBCTemplate) context
				.getBean("MatchJDBCTemplate");
		int count = matchjdbctemplate.getMatchCount(player.getPlayerId());
		if(count>0)
			return "1";
		else
			return "mainPage";
	}

	// Return result
	@RequestMapping("/Recresult")
	public String Recresult(@RequestParam("id") String id) {
		System.out.println(id);
		return id;

	}

}
