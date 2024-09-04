package com.example.sdp;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Rest
{
    UserServiceClass udc;
    //BidServiceClass bdc;



    public Rest(UserServiceClass udc) {
        this.udc=udc;
    }
    @GetMapping("/")
    public String demo()
    {
        return "home";
    }

    @GetMapping("/login")
    public String login()
    {
        return "login";
    }
    @GetMapping("/register")
    public String register()
    {
            return "register";
    }

    @GetMapping("/rule")
    public String rule()
    {
        return "rule";
    }

    @GetMapping("/live")
    public String live()
    {
        return "live";
    }
    @GetMapping("/loginhome")
    public String loginhome()
    {
        return "loginhome";
    }
    @GetMapping("/bidding1")
    public String bidding1()
    {
        return "bidding1";
    }

    @PostMapping("/login")
    public String register(@ModelAttribute("info") User stud2) {


        udc.insertUser(stud2);
        return "login";
    }

    boolean islogin=false;


    @PostMapping("/check")
    public String check(@ModelAttribute("info") User info, Model model, HttpSession session) {
        // Authenticate the user and set user information in the session
        session.setAttribute("loggedInUser", info);

        System.out.println(info.getEmail()+" "+info.getPassword());
        if (udc.existsByUsernameAndPassword(info.getEmail(), info.getPassword())) {

            islogin=true;
            model.addAttribute("isLoggedIn", islogin);
            model.addAttribute(info);
            return "redirect:/loginhome";


        } else {
            model.addAttribute("message", "Invalid username or password");
            return "redirect:/login";
        }
    }

}
