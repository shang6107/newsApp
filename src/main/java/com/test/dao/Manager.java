package com.test.dao;



import java.util.UUID;

public class Manager {
    public static void main(String[] args) {
        /* 所有表的主键生成 */
        System.out.println(UUID.randomUUID().toString().replaceAll("-",""));
    }
}
