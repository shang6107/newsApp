package com.cxgc.news_app.core.handlers.news_handler;


import com.cxgc.news_app.core.model.Comment;
import com.cxgc.news_app.core.services.news_service.imple.NewsService;
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
     * 通过新闻id获得新闻的本地地址
     * @return
     */
    @RequestMapping("/getOneNews")
    public Map<String,Object> test(String id, HttpServletResponse response) throws IOException {
        System.out.println("id = " + id);
        String url = newsService.getNewsById(id);
        System.out.println("url = " + url);
        if(url==null){
            return null;
        }
            File file=new File(url);
            StringBuffer stringBuffer=new StringBuffer();
            InputStream is=new FileInputStream(file);
            int len;
            byte[] b=new byte[1024];
            while((len=is.read(b))!=-1){
                stringBuffer.append(b.toString());
            }
            System.out.println("stringBuffer = " + stringBuffer);
            //获得该新闻的所有评论
            Collection<Comment> commentCollection = newsService.getAllCommentByNewsId(id);
            Map<String,Object> map=new HashedMap();
            map.put("news",stringBuffer);
            map.put("comments",commentCollection);
            return map;
    }
}
