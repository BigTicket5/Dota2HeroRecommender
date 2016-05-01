package com.dota2hero.MVC;

import org.apache.spark.mllib.recommendation.Rating;

import java.io.FileNotFoundException;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	@RequestMapping(value = "/main", method = RequestMethod.POST)
	public String AccountIdvalid(@ModelAttribute Player player,Model model,RedirectAttributes reattr) throws FileNotFoundException {
		HeroRecommender hr = new HeroRecommender();
		if(hr.isExistPlayer(player.getPlayerId()))
		{
			reattr.addAttribute("inPlayer",player);
			return "redirect:/Recresult";
		}
		else
			return "1";
	}
	// Return result
	@RequestMapping(value="/Recresult" , method = RequestMethod.GET)
	public String Recresult(@ModelAttribute("inPlayer") Player player,Model model) throws FileNotFoundException {
		List<Rating> sparkRecommend = SparkHeroRecommender.getRecommendResult(Integer.valueOf(player.getPlayerId()));
		List<Contribution> listcon =HeroRecommender.recommendBasedCosineSimilarity(player.getPlayerId());
		List<Contribution> listperson = HeroRecommender.recommendBasedPearsonCorrelationSimilarity(player.getPlayerId());
		List<RecommenderResult> lcr = HeroRecommender.getResult(listcon);
		List<RecommenderResult> lpr = HeroRecommender.getResult(listperson);
		List<RecommenderResult> ori = HeroRecommender.top5HistoryHeros(player.getPlayerId());
//		List<RecommenderResult> sparkRes = SparkHeroRecommender.getResult(sparkRecommend);
		model.addAttribute("rescon", lcr);
		model.addAttribute("resper", lpr);
		model.addAttribute("resori", ori);
		return "Recresult";
	}

}
