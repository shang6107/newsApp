package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.core.config.security.MyManagerDetails;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import com.cxgc.news_app.core.services.managerment_service.impl.CustomManagerDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @author 上官炳强
 * @Date 2018-03-28 / 09:18:46
 * @Version
 * @Description
 */
//@ServerEndpoint(value = "/communication/{id}",configurator = SpringConfigurator.class)
//@Component
public class MessageSender  {



    private static ConcurrentHashMap<String,MessageSender> onlines = new ConcurrentHashMap<>();
    private Session session;
    /*@Autowired
    private ManagerService service;
    @Autowired
    private UserDetailsService userDetailsService;*/

    @OnOpen
    public void onOpen(@PathParam("id")String id, Session session){
        this.session = session;
        /*System.out.println("service = " + service);
        System.out.println("userDetailsService = " + userDetailsService);*/
        onlines.put(session.getId(),this);
    }

    @OnMessage
    public void onMessage(Session session,String msg){
//        sendMsg(msg);
    }

    @OnClose
    public void onClose(){
        onlines.remove(this);
    }

    @OnError
    public void onError(Session session, Throwable error){
    }

    void sendMsg(String msg){

        for(Map.Entry<String,MessageSender> e : onlines.entrySet()){
            try {
                e.getValue().session.getBasicRemote().sendText(msg);
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
    }
}
