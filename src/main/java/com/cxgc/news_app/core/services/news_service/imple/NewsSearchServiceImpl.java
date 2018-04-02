package com.cxgc.news_app.core.services.news_service.imple;

import com.cxgc.news_app.core.mapper.news_mapper.NewsSearchDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.services.news_service.NewsSearchService;
import com.cxgc.news_app.utility.news.SearchSpider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

@Service
public class NewsSearchServiceImpl implements NewsSearchService{
    @Autowired
    private   NewsSearchDao nsd;
    @Autowired
    private SearchSpider ss;
    @Override
    public List<News> newsSearch(String str) {
        List<News> fromBaidu = new ArrayList<>();
        Future<List<News>> future;
        List<News> fromDatabase;
        List<String> strings = new ArrayList<>();
        String[] strs = str.trim().split(" ");
        for (String search:strs) {
            if ("".equals(str))
                continue;
            strings.add(search);
        }

     future = ss.baiduSearch(str);

      fromDatabase=  nsd.newsSearch(strings);
        boolean flag = true;
        while (flag){
            if(future.isDone()){
                try {
                    fromBaidu = future.get();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                } catch (ExecutionException e) {
                    e.printStackTrace();
                }finally {
                    flag=false;
                }

            }
        }

        if(fromDatabase!=null){
            fromBaidu.addAll(fromDatabase);
        }

        return fromBaidu;
    }
}
