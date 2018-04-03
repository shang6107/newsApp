package com.cxgc.news_app.utility.news;

import com.cxgc.news_app.core.model.News;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;

/**@author 徐瑜壮
 * @Date 2018-04-01 / 04:46:28
 * 新闻搜索通过解析百度搜索页面
 *
 */
@Component
@EnableAsync
public class SearchSpider {
    private static final String HOT_SEARCH_URL="http://top.baidu.com/buzz?b=1&fr=topcategory_c513";
    @Async
    public Future<List<News>> baiduSearch(String str) {
        String url ="http://baidu.com/s?wd=";
        List<News> newsList = new ArrayList<>();
        url+=str;
        //url+=searchString(str);

        Document doc = null;
        try {
            doc = Jsoup.connect(url).get();
        } catch (IOException e) {
            e.printStackTrace();
        }
        Elements news = doc.select("div[class=result c-container]");
        for (Element element : news) {
            News n = new News();
            Elements e = element.select("h3[class=t]");
            n.setTitle(e.text());
            n.setUrl(e.select("a").attr("href"));
            //用News对象的作者属性代替快照
            n.setAuthor(element.select("div[class=c-abstract]").text());
            newsList.add(n);
                }
                Future<List<News>> future = new AsyncResult<>(newsList);
                return future;
        }
    private static String searchString(String str){
        StringBuffer s = new StringBuffer();
        String[] strs = str.trim().split(" ");
        for (String string : strs) {
            if ("".equals(string))
                continue;

            s.append(string+"%20");
        }

      String search=  s.substring(0,s.length()-3);
        return search;
    }

    public List<String> hotSearch(){
        Document doc = null;
        List<String> list = new ArrayList<>();
        try {
            doc = Jsoup.connect(HOT_SEARCH_URL).get();
        } catch (IOException e) {
            e.printStackTrace();
        }
        Elements hots = doc.select("a[class=list-title]");
        for(int i = 0 ;i<10;i++){

            Element element = hots.get(i);
            list.add(element.text());

        }

        return list;
    }
}
