package com.code.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class PostTypeDto {
    private String name;
    private String type;
    private String description;
}
