package com.code.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class PostDto {
    private Integer id;
    private String name;
    private String url;
    private String content;
}
