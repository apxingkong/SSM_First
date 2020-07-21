package com.xing.pojo;

import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author jialin
 */
public class Person {
    /**
     * 通过byType的方式实现
     * 直接在属性上使用即可
     * 也可以在set方式上使用
     * 使用后可以不用编写set方法了，前提是这个自动装配的属性在IOC容器存在，且符合名字byName
     * @Autowired（required = false），说明这个对象可以为null
     * @Nullable 字段标注了这个注解，表示这个字段可以为null
     *
     * 如果@Autowired自动装配的环境比较复杂，自动装配无法通过一个注解【@Autowired】
     * 完成的时候，我们可以使用@Qualifier(value="XXX")去配置@Autowired的使用，指定一个唯一的bean使用
     */
    @Autowired
    private Cat cat;
    @Autowired
    private Dog dog;
    private String name;

    public Cat getCat() {
        return cat;
    }

    public void setCat(Cat cat) {
        this.cat = cat;
    }

    public Dog getDog() {
        return dog;
    }

    public void setDog(Dog dog) {
        this.dog = dog;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Person{" +
                "cat=" + cat +
                ", dog=" + dog +
                ", name='" + name + '\'' +
                '}';
    }
}
