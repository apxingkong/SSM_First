import com.xing.mapper.BookMapper;
import com.xing.pojo.Books;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author jialin
 */
public class Mytest {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookMapper bookMapper = context.getBean("bookMapper", BookMapper.class);
        for (Books books : bookMapper.queryAllBook()) {
            System.out.println(books);
        }
    }
}
