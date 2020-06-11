package examples.users;

//import org.junit.runner.RunWith;

import com.intuit.karate.junit5.Karate;

import io.cucumber.junit.CucumberOptions;

//import com.intuit.karate.junit5.Karate.Test;
import com.intuit.karate.*;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.BeforeClass;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

//@RunWith(Karate.class)
//@KarateOptions(features = "classpath:examples/users/JenkinsGetTest.feature")
//@KarateOptions(features = "classpath:C:\\Users\\phononuser\\eclipse-workspace\\karateget\\src\\test\\java\\examples\\users\\JenkinsGetTest.feature", tags = "~@ignore")
//@CucumberOptions(features = "classpath:C:\\Users\\phononuser\\eclipse-workspace\\karateget\\src\\test\\java\\examples\\users\\JenkinsGetTest.feature", plugin = {"pretty", "com.epam.reportportal.cucumber.ScenarioReporter"})
public class JenkinsGetTest {
	
//	 @BeforeClass
//	    public static void before() {
//	        System.setProperty("karate.env", "test");
//	    }

	//--------------------------------------------
	//Only run specific feature files
	//--------------------------------------------
	//------------------------------------------
	//a) Only run "JenkinsGetTest.feature" files
	//------------------------------------------
//		@Karate.Test
//    Karate testSample() {
//        return Karate.run("JenkinsGetTest").relativeTo(getClass());
//    }
	//------------------------------------------
	//b) Only run "JenkinsPostTestNew.feature" files
	//------------------------------------------
	
	@Karate.Test
    Karate testPostSample() {
        return Karate.run("JenkinsPostTestNew").relativeTo(getClass());
    }
	
	//--------------------------------------------
	//Only run specific scenarios by using tags annotations
	//--------------------------------------------
	 
//  @Karate.Test
//  Karate testTags() {
//      return Karate.run("JenkinsTestWithTags").tags("@tag1").relativeTo(getClass());
//  }
//
//  @Karate.Test
//  Karate testTags2() {
//      return Karate.run("JenkinsTestWithTags").tags("@tag2").relativeTo(getClass());
//  }
  
	//--------------------------------------------
	//Ignore 1 feature file and run other
	//--------------------------------------------
	
//  @Karate.Test
//  Karate testFullPath() {
//      return Karate.run("classpath:C:\\Users\\phononuser\\eclipse-workspace\\karateget\\src\\test\\java\\examples\\users\\JenkinsTestWithTags.feature").tags("@tag1");
//  }
	
	//--------------------------------------------
	//Parallel Runner
	//--------------------------------------------
	
//	@Test
//	    void testParallel() {
//	        Results results = Runner.path("classpath:C:\\\\Users\\\\phononuser\\\\eclipse-workspace\\\\karateget\\\\src\\\\test\\\\java\\\\examples\\\\users\\\\JenkinsTestWithTags.feature").tags("~@ignore").parallel(5);
//	        assertEquals(0, results.getFailCount(), results.getErrorMessages());
//	    }
}



						