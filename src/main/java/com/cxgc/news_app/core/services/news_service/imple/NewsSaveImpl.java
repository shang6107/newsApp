package com.cxgc.news_app.core.services.news_service.imple;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cxgc.news_app.core.mapper.news_mapper.NewsIndexDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.services.news_service.NewsSave;
import com.cxgc.news_app.utility.news.NewsSpider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
@Service
@Scope
public  class NewsSaveImpl implements NewsSave {
    @Autowired
    private NewsIndexDao nid;

    private JSONArray objects;
    private  Integer type;
    private String path;
    public NewsSaveImpl(){}
    public NewsSaveImpl(JSONArray objects,Integer type,String path){
        this.objects=objects;
        this.type=type;
        this.path = path;
    }
    @Override
    public void run() {
        try {
            System.out.println(nid);
            newsHandle();
            List<News> newsList = saveNewsToDatabase();
            if(newsList!=null&&newsList.size()>0){
                nid.insertNews(newsList);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }finally {
            objects=null;
        }
    }


    @Override
    public void newsHandle() throws IOException {
        JSONObject news;
        List<String> strings = null;
        File newsList = new File(path);
        if(newsList.exists()){
            String[]  list = newsList.list();
            strings = new ArrayList<>(Arrays.asList(list));
        }
        a:  for(int i=0;i<objects.size();i++){
            news = objects.getJSONObject(i);
            String id = news.getString("id");
            if(strings!=null){
                for (int j=0;j<strings.size();j++){
                    if(strings.get(j).equals(id)){
                        objects.remove(i);
                        strings.remove(j);
                        i--;
                        j--;
                        continue a;
                    }
                }

            }
            String content= news.getString("content");

            NewsSpider.newsSave(content,id,type);
        }
    }
    @Override
    public List<News> saveNewsToDatabase() throws IOException, ParseException {
        News n;
        NewsSpider ns = new NewsSpider();
        List<News> newsList = ns.newsList(type);
        NewsType nt = new NewsType();
        nt.setId(type);
        for (int i=0;i<newsList.size();i++){
            n = newsList.get(i);
            n.setType(nt);
            n.setUrl(path+"\\"+n.getId());
        }
        return newsList;
    }

}
