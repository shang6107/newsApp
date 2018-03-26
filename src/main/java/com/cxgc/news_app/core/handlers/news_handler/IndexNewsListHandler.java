package com.cxgc.news_app.core.handlers.news_handler;



import com.cxgc.news_app.core.services.news_service.imple.NewsIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.Map;

/**
 * @author 徐瑜壮
 * @Data 2018-03-21 / 11:17:41
 * @Version
 * @Description
 */
@Controller
public class IndexNewsListHandler {
    @Autowired
    private NewsIndexService ns;

    /**
     * 首页新闻数据
     * @return 新闻json数据
     */
    @RequestMapping("/newsIndex")
    @ResponseBody
    public Map<String,Object> index(String id){

        return ns.index(id);
    }


}
