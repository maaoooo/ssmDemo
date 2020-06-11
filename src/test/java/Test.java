import com.maaoooo.pojo.Books;
import com.maaoooo.service.BookService;
import com.maaoooo.service.BookServiceImpl;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author lzr
 * @date 2020/6/11 09:43:33
 * @description
 */
public class Test {
    @org.junit.Test
    public void test(){
        ClassPathXmlApplicationContext context=new ClassPathXmlApplicationContext("spring-dao.xml","spring-service.xml");
        BookService service=context.getBean(BookServiceImpl.class);
        List<Books> books = service.queryAllBook();
        for (Books book : books) {
            System.out.println(book);
        }

    }
}
