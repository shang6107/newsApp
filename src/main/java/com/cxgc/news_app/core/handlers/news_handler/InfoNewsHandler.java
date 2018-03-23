package com.cxgc.news_app.core.handlers.news_handler;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.services.news_service.imple.NewsService;
import net.sf.json.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.json.Json;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

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
    public @ResponseBody JSONArray test(String id,HttpServletResponse response) throws IOException {
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
      return com.alibaba.fastjson.JSON.parseArray(stringBuffer.toString());//String text
    }
}
