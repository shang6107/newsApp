package com.cxgc.news_app.core.model;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import java.util.List;

/**
 * @author 何其勇
 * @Date 2018-03-20 / 01:57:41
 * @Version 1.0
 * @Description 用户收藏类
 */
@Data
public class Groups {
    @NotEmpty(message = "{groups.id.notNull}")
    private String id;
    private String groupName;
    private String descpt;
    private List<Authorities> authorities;
}
