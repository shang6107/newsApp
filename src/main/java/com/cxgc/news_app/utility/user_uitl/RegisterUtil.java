package com.cxgc.news_app.utility.user_uitl;


import net.sf.json.JSONObject;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 短信验证工具类
 */
@Component
public class RegisterUtil {


    public  String phoneRegister(String phone, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

        request.setCharacterEncoding("UTF-8");
        //账号的Id由第三方平台提供
        String accountSid ="97d9f0729dde41f78fb05ad4b77bea14";

        //定义短信验证码
        String phoneCode = Integer.toString((int)(Math.random()*(1000000-100000)) +(100000));
        System.out.println("phoneCode==========================:" + phoneCode);
        //提供需要发送的短信内容。短信的内容需和你账号内的一个模板相同
        String smsContent ="【头条新闻】您的验证码为" + phoneCode +"，请于 10 分钟内正确输入，如非本人操作，请忽略此短信。";

        //定义时间戳
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

        String timestamp = sdf.format(new Date());

        //定义账号的令牌authToken
        String authToken = "8169bfd10e3b4a62b5b32bda8026827d";


        //定义响应文件的类型
        String respDataType = "JSON";

        //获得Sig
        String sig = getSid(accountSid, authToken, timestamp);

        //获得post提交的参数
        String param = getParam(accountSid, smsContent, phone, timestamp, sig, respDataType);
        //发送短信
        String result = null;
        try {
           // result ="{\"respCode\":\"00000\",\"respDesc\":\"请求成功。\",\"failCount\":\"0\",\"failList\":[],\"smsId\":\"53ab5cb93bfc4c9890a760f563e832e0\"}"; //send(param);
             result = send(param);
            System.out.println("result = " + result);
            //字符串转换为JSON对象
            JSONObject jsonObject  =JSONObject.fromObject(result);

            Object code = jsonObject.get("respCode");
            System.out.println("code = " + code);
            //判断短信收费发送成功
            if(code != null && code.toString().equals("00000") ){
                return phoneCode;
            }
           } catch (Exception e) {
            // TODO Auto-generated catch block
            System.out.println("result = " + e);
            e.printStackTrace();
        }

        /* "respCode":"00000","respDesc":"请求成功。","failCount":"0","failList":[],"smsId":"53ab5cb93bfc4c9890a760f563e832e0"*/

        return null;

    }






    private String send(String param) throws IOException {
        String sendUrl  ="https://api.miaodiyun.com/20150822/industrySMS/sendSMS";

        //2.定义网络连接对象
        URL url = new URL(sendUrl);

        //3.获得网络连接的对象
        URLConnection opConnection =  url.openConnection();

        //4.设置网络连接对象的参数
        opConnection.setDoOutput(true);//设置POST提交
        opConnection.setDoInput(true);//设置是否允许读取返回的值
        opConnection.setConnectTimeout(3000);//设置连接的超时时间
        opConnection.setReadTimeout(2000);//设置读取的超时时间

        //5.设置执行连接对象
        OutputStreamWriter out = new OutputStreamWriter(opConnection.getOutputStream(), "UTF-8");
        //6.传递参数
        out.write(param);
        //7刷新缓存
        out.flush();

        //8.获得返回的参数
        BufferedReader br =  new BufferedReader(new InputStreamReader(opConnection.getInputStream(), "UTF-8"));
        String line ="";

/*
        System.out.println("brbrrbrbr"+br);
*/

        //定义存放响应内容的对象
        StringBuffer sb = new StringBuffer();
        while((line=br.readLine()) != null){
            sb.append(line);
        }
/*
        System.err.println("sbsbsbsbs"+sb.toString());
*/
        //关闭资源
        br.close();
        out.close();

        //返回发送短信，第三方响应的结果
        System.out.println("sb = " + sb);
        return sb.toString();
    }






    private String getParam(String accountSid, String smsContent, String phone, String timestamp, String sig, String respDataType) {
        return "accountSid=" + accountSid +"&smsContent=" + smsContent
                +"&to=" + phone +"&timestamp=" +timestamp
                +"&sig="+sig +"&respDataType="+respDataType;
    }






    private String getSid(String accountSid, String authToken, String timestamp) {
        return DigestUtils.md5Hex(accountSid + authToken + timestamp);


    }
}
