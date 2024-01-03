package com.zaurtregulov.spring.mvc;


import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

//import javax.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {

        model.addAttribute("employee", new Employee());
//                emp);

        return "ask-emp-details-view";
    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails() {
//        return "show-emp-details-view";
//    }
// HttpServletRequest
//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model) {
//
//        String empName = request.getParameter("employeeName");
//        empName="Mr."+ empName;
//        model.addAttribute("nameAttribute", empName);
//
//        model.addAttribute("description", " - udemy instructor");
//        return "show-emp-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(@RequestParam("employeeName") String empName, Model model) {
//
//        empName = "Mr." + empName + "!";
//        model.addAttribute("nameAttribute", empName);
//
//        return "show-emp-details-view";
//    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee emp,
                                 BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "ask-emp-details-view";
        } else {
            String name = emp.getName();

            emp.setName("mr. " + name);

            String surname = emp.getSurname();
            emp.setSurname(surname + "!");

            int salary = emp.getSalary();
            emp.setSalary(salary + 1000);

            return "show-emp-details-view";

        }
    }


}
