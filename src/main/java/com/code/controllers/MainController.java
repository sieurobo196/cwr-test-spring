package com.code.controllers;

import com.code.model.LanguageDto;
import com.code.model.PostDto;
import com.code.model.PostTypeDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Controller
public class MainController {

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String indexPage(Model model) {

        model.addAttribute("showMenu", true);
        List<PostTypeDto> postTypeDtoList = new ArrayList<>();
        PostTypeDto java = PostTypeDto.builder().name("java").type("java").description("language java").build();
        PostTypeDto css = PostTypeDto.builder().name("css").type("css").description("language css").build();
        PostTypeDto html = PostTypeDto.builder().name("html").type("html").description("language html").build();
        postTypeDtoList.add(java);
        postTypeDtoList.add(css);
        postTypeDtoList.add(html);
        model.addAttribute("title", "Home");
        model.addAttribute("list", postTypeDtoList);
        return "indexPage";
    }
    @RequestMapping({"/*/*","/*/*/*"})
    public String defaultHandler() {
        // Chuyển hướng đến trang home
        return "redirect:/";
    }

//    @RequestMapping("/home")
//    public String homePage(Model model) {
//        // Chuyển hướng đến trang home
//        model.addAttribute("showMenu", true);
//        List<LanguageDto> languageDtos = new ArrayList<>();
//        languageDtos.add(LanguageDto.builder()
//                .name("JAVA")
//                .description("Java is a high-level, object-oriented programming language." +
//                        "Java is used to develop mobile apps, web apps, desktop apps, games and much more.")
//                .url("java").build());
//        languageDtos.add(LanguageDto.builder()
//                .name("CSS")
//                .description("CSS (Cascading Style Sheets) is a style sheet language used to describe the presentation of a document written in HTML  or XML")
//                .url("css").build());
//        languageDtos.add(LanguageDto.builder()
//                .name("HTML")
//                .description("HTML stands for Hypertext Markup Language. It is the standard markup language used to create web pages and is the backbone of the World Wide Web.")
//                .url("html").build());
//        languageDtos.add(LanguageDto.builder()
//                .name("JAVASCRIPT")
//                .description("JavaScript is a popular high-level programming language that is primarily used for creating dynamic and interactive web pages.")
//                .url("javascript").build());
//        model.addAttribute("languageDtos", languageDtos);
//        languageDtos.add(LanguageDto.builder()
//                .name("TYPESCRIPT")
//                .description("TypeScript is an open-source programming language that is a superset of JavaScript")
//                .url("javascript").build());
//        languageDtos.add(LanguageDto.builder()
//                .name("SPRING")
//                .description("Spring is an open-source application framework for building enterprise-level Java applications.")
//                .url("spring").build());
//        languageDtos.add(LanguageDto.builder()
//                .name("ANDROID")
//                .description("Android is an open-source operating system designed primarily for mobile devices, such as smartphones and tablets.")
//                .url("android").build());
//        languageDtos.add(LanguageDto.builder()
//                .name("FLUTTER")
//                .description("Flutter is an open-source mobile application development framework created by Google.")
//                .url("flutter").build());
//
//        model.addAttribute("languageDtos", languageDtos);
//        return "homePage";
//    }

//    @RequestMapping(value = {"/list/{type}"}, method = RequestMethod.GET)
//    public String getTypePost(Model model, @PathVariable String type) {
//        model.addAttribute("showMenu", true);
//        List<PostDto> postDtoList = new ArrayList<>();
//        if (type.equalsIgnoreCase("java")) {
//            PostDto java1 = PostDto.builder().id(1).name("begin java 1").url("begin-java1").build();
//            PostDto java2 = PostDto.builder().id(2).name("begin java 2").url("begin-java2").build();
//            PostDto java3 = PostDto.builder().id(3).name("begin java 3").url("begin-java3").build();
//            postDtoList.add(java1);
//            postDtoList.add(java2);
//            postDtoList.add(java3);
//        } else {
//            PostDto css1 = PostDto.builder().id(1).name("begin css 1").url("begin-css1").build();
//            PostDto css2 = PostDto.builder().id(2).name("begin css 2").url("begin-css2").build();
//            PostDto css3 = PostDto.builder().id(3).name("begin css 3").url("begin-css3").build();
//            postDtoList.add(css1);
//            postDtoList.add(css2);
//            postDtoList.add(css3);
//        }
//        model.addAttribute("listPost", postDtoList);
//        model.addAttribute("type", type);
//        return "typePage";
//    }
//
//    @RequestMapping(value = {"/post/{type}/{url}"}, method = RequestMethod.GET)
//    public String getPostDetail(Model model, @PathVariable String type, @PathVariable String url) {
//        model.addAttribute("showMenu", true);
//        if (url.equalsIgnoreCase("begin-java1")) {
//
//            model.addAttribute("postDetail", PostDto.builder().id(1).name("begin java 1").url("begin-java1").
//                    content("i write something about java").build());
//        } else {
//            model.addAttribute("postDetail", PostDto.builder().id(1).name("begin css 1").url("begin-css1")
//                    .content("i write something about css").build());
//        }
//
//        return "postDetailPage";
//    }
//
//    @RequestMapping(value = {"/contactus"}, method = RequestMethod.GET)
//    public String contactusPage(Model model) {
//        model.addAttribute("address", "Vietnam");
//        model.addAttribute("phone", "...");
//        model.addAttribute("email", "...");
//        return "contactusPage";
//    }

}
