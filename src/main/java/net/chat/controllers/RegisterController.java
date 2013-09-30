package net.chat.controllers;

import javax.validation.Valid;

import net.chat.constants.PageConstants;
import net.chat.formbean.RegisterForm;
import net.chat.service.RegeditUserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

	@Autowired
	private RegeditUserService regeditUser;

	@ModelAttribute("registerForm")
	public RegisterForm createFormBean() {
		return new RegisterForm();
	}

	@RequestMapping("/register")
	public String init() {
		return PageConstants.PAGE_REGISTER;
	}

	@RequestMapping("/register/submit")
	public String submit(@Valid RegisterForm bean, BindingResult result,
			Model model) {
		if (result.hasErrors()) {

			StringBuffer sb = new StringBuffer();
			if (!bean.getSpassword1().equals(bean.getSpassword2())) {
				sb.append("两次输入的密码必须相同！");
			}
			model.addAttribute("errorMsg", sb);
			model.addAttribute("registerForm", bean);
			return PageConstants.PAGE_REGISTER;
		}
		regeditUser.regeditUser(bean);

		return PageConstants.PAGE_LOGIN_1;
	}
}
