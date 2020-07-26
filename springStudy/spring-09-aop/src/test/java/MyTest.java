import com.xing.service.UserService;
import com.xing.service.UserServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author jialin
 */
public class MyTest {
    public static void main(String[] args) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        //动态代理代理的是接口：注意点
        UserService userService = (UserService) applicationContext.getBean("userService");
        userService.add();
    }
}
