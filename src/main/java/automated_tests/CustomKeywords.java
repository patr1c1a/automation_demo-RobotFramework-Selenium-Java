package automated_tests;

public class CustomKeywords {
	
	
	/** Sets the path to browser drivers within project structure
	 * Used in __init__.robot files to perform Test Setup. 
	 * Keyword: Browser Setup
	 */
	public void browserSetup() {
		System.setProperty("webdriver.chrome.driver", "src\\test\\resources\\chromedriver.exe");
		System.setProperty("webdriver.gecko.driver", "src\\test\\resources\\geckodriver.exe");
	}
	
}