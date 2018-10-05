package nl.tjonahen.hystrix;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest({"eureka:client:serviceUrl:defaultZone:http://127.0.0.1:8761/eureka/"})
public class HystrixdashboardApplicationTests {

	@Test
	public void contextLoads() {
	}

}
