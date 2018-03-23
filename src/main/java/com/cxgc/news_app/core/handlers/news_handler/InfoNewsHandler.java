package com.cxgc.news_app.core.handlers.news_handler;


import com.cxgc.news_app.core.model.Comment;
import com.cxgc.news_app.core.services.news_service.imple.NewsService;
import com.cxgc.news_app.utility.news.NewsIO;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Map;

/**
 *  @author 唐倩
 *  @Version
 *  @Description
 */
@Controller
public class InfoNewsHandler {

    @Autowired
    private NewsService newsService;
    /**
     * 通过新闻id获得新闻及所有评论
     * @return
     */
    @RequestMapping("/getOneNews")
    public Map<String,Object> test(String id) throws IOException {
        Map<String,Object> map=new HashedMap();

        String url = newsService.getNewsById(id);
        if(url==null){
            return null;
        }
            StringBuffer stringFromFile = NewsIO.getStringFromFile(url);
            //获得该新闻的所有评论
            Collection<Comment> commentCollection = newsService.getAllCommentByNewsId(id);

            map.put("news",stringFromFile);
            map.put("comments",commentCollection);
            return map;
    }
}
