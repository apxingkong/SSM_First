package com.xing.demo3;

/**
 * @author jialin
 */
public class Client {
    public static void main(String[] args) {
        //真实角色
        Host host = new Host();
        //代理角色：现在没有
        ProxyInvo pih = new ProxyInvo();
        //通过调用程序处理角色来处理我们要调用的接口对象
        pih.setRent(host);
        Rent proxy =(Rent) pih.getProxy();
        proxy.Rent();
    }
}
