from selenium import webdriver
import time

# Initialize the Chrome WebDriver (ensure chromedriver is installed and in your PATH)
driver = webdriver.Chrome()

# Open your GitHub repository page
driver.get("https://github.com/ftakelait/omnifood/blob/main/03-CSS-Fundamentals/style.css")

try:
    while True:
        time.sleep(60)  # Wait for 60 seconds
        driver.refresh()  # Refresh the page
except KeyboardInterrupt:
    driver.quit()
