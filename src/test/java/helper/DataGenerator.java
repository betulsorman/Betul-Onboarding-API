package helper;

import org.apache.commons.lang3.RandomStringUtils;

import java.util.Random;

public class DataGenerator {

    public static String generateString() {
        return RandomStringUtils.randomAlphabetic(10);
    }

    public static String generateEmail() {
        return generateString() + "@gmail.com";
    }

    public static String generatePhone() {
        return "+90" + RandomStringUtils.randomNumeric(10);
    }

    public static String generatePassword() {
        return RandomStringUtils.randomAlphanumeric(10);
    }

    public static int generateID() {
        Random random = new Random();
        return random.nextInt(1000);
    }

    public static int generateUserStatus() {
        Random random = new Random();
        return random.nextInt(2);
    }


}
