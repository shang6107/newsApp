package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.services.managerment_service.NewsManagermentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerNewsHandler {
    @Autowired
    private NewsManagermentService newsManService;




}
