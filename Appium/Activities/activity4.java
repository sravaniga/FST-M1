package activities;

import io.appium.java_client.AppiumBy;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.options.UiAutomator2Options;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import java.net.MalformedURLException;
import java.net.URL;
import java.time.Duration;

public class activity4 {
    // Driver Declaration
    AndroidDriver driver;
    WebDriverWait wait;

    // Set up method
    @BeforeClass
    public void setUp() throws MalformedURLException {
        // Desired Capabilities
        UiAutomator2Options options = new UiAutomator2Options();
        options.setPlatformName("android");
        options.setAutomationName("UiAutomator2");
        options.setAppPackage("com.samsung.android.app.contacts");
        options.setAppActivity("com.samsung.android.contacts.contactslist.PeopleActivity");
        options.noReset();

        // Server Address
        URL serverURL = new URL("http://localhost:4723/wd/hub");

        // Driver Initialization
        driver = new AndroidDriver(serverURL, options);

        wait = new WebDriverWait(driver, Duration.ofSeconds(10));
    }

    // Test method
    @Test
    public void contactsTest() {
        // Find and click the add button
        driver.findElement(AppiumBy.id("menu_create_contact")).click();

        // Wait for elements to load
        wait.until(ExpectedConditions.elementToBeClickable(
                AppiumBy.id("nameEdit")
        ));
        driver.findElement(AppiumBy.id("arrowButton")).click();

        // Enter the details
        driver.findElement(AppiumBy.id(
                "firstEdit")).sendKeys("Aaditya");
        driver.findElement(AppiumBy.id(
                "lastEdit")).sendKeys("Varma");

        driver.findElement(AppiumBy.id("arrowButton")).click();

        driver.findElement(AppiumBy.className("android.widget.RelativeLayout")).click();

        driver.findElement(AppiumBy.xpath(
                "//android.widget.EditText[@text='Phone']")).sendKeys("999148292");
        // Click Save
        driver.findElement(AppiumBy.xpath("//android.widget.TextView[@text='Save']")).click();

        // Wait for contact to save
        wait.until(ExpectedConditions.elementToBeClickable(AppiumBy.id("header")));

        // Assertion
        String contactName = driver.findElement(AppiumBy.id("header")).getText();
        Assert.assertEquals(contactName, "Aaditya Varma");
    }

    // Tear down method
    @AfterClass
    public void tearDown() {
        // Close the app
        driver.quit();
    }
}
