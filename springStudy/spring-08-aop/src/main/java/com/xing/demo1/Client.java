package com.xing.demo1;

/**
 * @author jialin
 */
public class Client {
    public static void main(String[] args) {
        Host host = new Host();
        //代理，代理角色一般会有一些附属操作
        Proxy proxy = new Proxy(host);
        proxy.Rent();
    }
}
