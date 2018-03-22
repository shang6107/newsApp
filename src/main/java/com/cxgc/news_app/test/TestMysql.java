package com.cxgc.news_app.test;

import java.sql.Connection;
import java.sql.DriverManager;

public class TestMysql {

    public static void main(String[] args) {
        {

            String url = "jdbc:mysql://10.0.255.255:3306/news_app?characterEncoding=utf-8";
            String driver = "com.mysql.jdbc.Driver";
            try{
                Class.forName(driver);
            }catch(Exception e){
                System.out.println("无法加载驱动");
            }

            try {
                Connection con = DriverManager.getConnection(url,"root","123456");
                if(!con.isClosed())
                    System.out.println("success");
            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
}
