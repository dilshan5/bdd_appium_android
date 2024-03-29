require 'appium_lib'
require 'selenium-webdriver'

class HomeScreen

  def initialize(driver)
    @appium_driver = driver
  end

  #to verify the lauch screen
  def verified_screen
    begin
      @appium_driver.find_element(:id, "title").displayed?
    rescue
      return false
    end
  end

  #to check element is Displayed
  def is_displayed? id
    begin
      @appium_driver.find_element(:accessibility_id, id).displayed?
    rescue
      return false
    end
  end

  def click_contactButton
    @appium_driver.find_element(:id, "addContactButton").click
  end

end