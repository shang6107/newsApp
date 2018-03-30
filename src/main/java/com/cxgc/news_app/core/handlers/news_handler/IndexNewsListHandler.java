package com.cxgc.news_app.core.handlers.news_handler;
import com.cxgc.news_app.core.services.news_service.NewsIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 徐瑜壮
 * @Data 2018-03-21 / 11:17:41
 * @Version
 * @Description
 */
@Controller
@RequestMapping("/app")
public class IndexNewsListHandler {
    @Autowired
    private NewsIndexService ns;

    /**
     * 首页新闻数据
     * @return 新闻json数据
     */
    @RequestMapping(value = "index")
    @ResponseBody
    public Map<String,Object> index(){
        return ns.index();
    }
    @RequestMapping("newsType")
    @ResponseBody
    public Map<String,Object> newsType(Integer type){
        Map<String,Object> map = new HashMap<>();
        map.put("newsList",ns.newsListByType(type));
        return  map;
    }
    @RequestMapping("records")
    public void addUserRecords(String newsId,String userId ){
        ns.addNewsRecords(newsId);
            if(!"null".equals(userId))
            ns.addUserRecords(userId,newsId);

    }
}
