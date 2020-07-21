import com.xing.dao.USerDaoImpl;
import com.xing.service.UserServiceImpl;

/**
 * @author jialin
 */
public class MyTest {
    public static void main(String[] args) {
        //用户实际调用的是业务层，dao层不需要调用
        UserServiceImpl userService = new UserServiceImpl();
        userService.setUserDao(new USerDaoImpl());
        userService.getUser();
    }
}
