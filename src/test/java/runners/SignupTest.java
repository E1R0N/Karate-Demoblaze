package runners;

import com.intuit.karate.junit5.Karate;

class SignupTest {

    @Karate.Test
    Karate testSignup() {
        return Karate.run("classpath:features/Signup.feature").relativeTo(getClass());
    }
}