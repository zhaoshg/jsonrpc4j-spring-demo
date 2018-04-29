import com.zhaoshg.rpc.service.OtherService;
import com.zhaoshg.rpc.service.User;
import com.zhaoshg.rpc.service.UserService;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

@DirtiesContext
@ContextConfiguration(locations = "classpath*:spring.xml")
public class UserServiceTest extends AbstractJUnit4SpringContextTests {


    @Autowired
    private UserService userService;

    @Autowired
    private OtherService otherService;

    @Test
    public void testService(){

        User user = userService.getUserByUsername("zhaoshg");
        Assert.assertEquals("Alex",user.getNickName());
        Boolean res = otherService.otherMethod();
        Assert.assertTrue(res);
    }
}
