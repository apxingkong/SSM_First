import com.xing.pojo.Hello;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author jialin
 */
public class MyTest {
    public static void main(String[] args) {
        //获取Spring的上下文对象
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        //我们的对象都在Spring中管理，要使用，直接去取
        Hello hello = (Hello) context.getBean("hello");
        System.out.println(hello);
    }
}
