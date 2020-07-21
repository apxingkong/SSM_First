import com.xing.config.XingConfig;
import com.xing.pojo.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * @author jialin
 */
public class MyTest {
    public static void main(String[] args) {
        //如果完全使用了配置类去做，我们就只能通过AnnotationConfig上下文获取容器
        ApplicationContext applicationContext = new AnnotationConfigApplicationContext(XingConfig.class);
        User getUser = (User) applicationContext.getBean("user");
        System.out.println(getUser.getName());
    }
}
