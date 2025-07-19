import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
    Karate testbasicapi(){

        return Karate.run().tags("@Test").relativeTo(getClass());
    }


}
