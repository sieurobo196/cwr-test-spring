package com.code.controllers;

import com.code.dao.PostDAO;
import com.code.model.PostDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ArticleController {

    private final PostDAO postDAO;

    public ArticleController(PostDAO postDAO) {
        this.postDAO = postDAO;
    }

    @GetMapping("/articles/new")
    public String showNewArticleForm(Model model) {
        model.addAttribute("article", new PostDto());
        return "new-article";
    }

    @PostMapping("/articles")
    public String createArticle(@ModelAttribute("article") PostDto article) {
        // Thực hiện lưu bài báo vào cơ sở dữ liệu
//        articleRepository.save(article);
        return "redirect:/articles/" + article.getId();
    }

    @GetMapping("/articles/{id}/edit")
    public String showEditArticleForm(@PathVariable("id") Integer id, Model model) {
        PostDto postDto = postDAO.postDetailById(id);
//                .orElseThrow(() -> new IllegalArgumentException("Bài báo không tồn tại"));
        model.addAttribute("article", postDto);
        return "edit-article";
    }

    @PostMapping("/articles/{id}")
    public String updateArticle(@PathVariable("id") Long id, @ModelAttribute("article") PostDto article) {
        // Thực hiện cập nhật bài báo vào cơ s
        // dữ liệu
//        Article existingArticle = articleRepository.findById(id)
//                .orElseThrow(() -> new IllegalArgumentException("Bài báo không tồn tại"));
//        existingArticle.setTitle(article.getTitle());
//        existingArticle.setContent(article.getContent());
//        articleRepository.save(existingArticle);
        return "redirect:/articles/" + id;
    }
}
