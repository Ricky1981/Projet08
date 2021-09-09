# Generated by Selenium IDE
import pytest
import time
import json
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.chrome.options import Options

class TestTest():
  def setup_method(self, method):
    options = Options()
    options.headless = True
    self.driver = webdriver.Chrome(options=options)
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_test(self):
    self.driver.get("http://192.168.10.8:8083/index.php")
    self.driver.find_element(By.CSS_SELECTOR, "a > .hidden-sm-down").click()
    self.driver.find_element(By.NAME, "email").click()
    self.driver.find_element(By.NAME, "email").send_keys("test@test.fr")
    # self.driver.find_element(By.NAME, "password").click()
    # self.driver.find_element(By.NAME, "password").send_keys("Jfm2000m!")
    # self.driver.find_element(By.ID, "submit-login").click()
    # self.driver.find_element(By.CSS_SELECTOR, "#identity-link .material-icons").click()
    # self.driver.find_element(By.CSS_SELECTOR, ".logout").click()
