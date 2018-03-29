package com.cxgc.news_app.core.handlers.managerment_system;

import javax.websocket.*;
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
@ServerEndpoint("/base")
public class MessageSender {

    private static ConcurrentHashMap<String,MessageSender> onlines = new ConcurrentHashMap<>();
    private Session session;

    @OnOpen
    public void onOpen(Session session){
        this.session = session;
        sendMsg("有人进来了");
        onlines.put(session.getId(),this);
    }

    @OnMessage
    public void onMessage(Session session,String msg){
        sendMsg(msg);
    }

    @OnClose
    public void onClose(){
        onlines.remove(this);
    }

    @OnError
    public void onError(Session session, Throwable error){
        error.printStackTrace();
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
