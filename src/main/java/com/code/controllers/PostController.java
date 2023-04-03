package com.code.controllers;

import com.code.dao.BankAccountDAO;
import com.code.dao.PostDAO;
import com.code.exception.BankTransactionException;
import com.code.form.SendMoneyForm;
import com.code.model.PostDto;
import com.code.model.PostTypeDto;
import com.code.model.bank.BankAccountInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
public class PostController {

    @Autowired
    private PostDAO postDAO;

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String listType(Model model) {
        List<PostTypeDto> listType = new ArrayList<>();
//        List<PostTypeDto> listType = postDAO.getListType();
        listType.add(PostTypeDto.builder().type("java").name("JAVA").build());
        model.addAttribute("listType", listType);

        return "postTypePage";
    }

    @RequestMapping(value = "/{type}/list", method = RequestMethod.GET)
    public String listPost(Model model, @PathVariable String type) {
        List<PostDto> listPost = new ArrayList<>();
        listPost = postDAO.listPost(type);
//        listPost.add(PostDto.builder().type("java").title("Begin java").url("begin-java").build());
        model.addAttribute("listPost", listPost);

        return "listPostPage";
    }

    @RequestMapping(value = "/post/{type}/{url}", method = RequestMethod.GET)
    public String postDetail(Model model, @PathVariable String type, @PathVariable String url) {
        PostDto postDto = postDAO.postDetail(url,type);

        model.addAttribute("postDto", postDto);

        return "postDetailPage";
    }


}