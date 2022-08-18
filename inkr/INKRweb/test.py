from selenium import webdriver
from selenium.webdriver.common.by import By
import time
from selenium.webdriver.common.keys import Keys
user_name = "YOUR EMAILID"
password = "YOUR PASSWORD"
driver = webdriver.Edge("msedgedriver.exe")
driver.get("https://inkr.com")
driver.maximize_window()

time.sleep(2)
# element = driver.find_element(By.XPATH, "//button[@id='sign-in-button-id']").click()
element = driver.find_element(By.XPATH, "//input[@type='search'][@role='combobox'] ").send_keys("Air gear")
