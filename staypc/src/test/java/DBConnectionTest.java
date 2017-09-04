import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.inject.Inject;
import javax.sql.DataSource;
import java.sql.Connection;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:appContext/applicationContext.xml"})
public class DBConnectionTest {

    @Inject
    private DataSource ds;

    @Test
    public void testConnection() throws Exception{
        try(Connection con = ds.getConnection()){
            System.out.println("연결완료");
        }catch (Exception e){
            System.out.println("연결실패");
            e.printStackTrace();
        }
    }
}

