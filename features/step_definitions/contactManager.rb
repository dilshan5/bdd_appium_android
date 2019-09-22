require_relative '../../lib/driver/android_driver'
require_relative '../../lib/screens/home_screen'
require 'logger'

Given(/^the user has opened the app and the app's Home screen is displayed$/) do
  @logger = Logger.new STDOUT
  @android ||= AndroidDriver.new
  @hScreen ||= HomeScreen.new(@android.driver)
  expect(@hScreen.verified_screen).to be true, "Lauched Invalid Application."
  @logger.info ">> Lauched Home Screen "
end


And(/^I can see "(.*?)"$/) do |value|
  expect(@hScreen.is_displayed? value).to be true, "Home Screen #{value} is not displayed"
end

Then(/^I click on Add to Contact Button$/) do
  @hScreen.click_contactButton
  @logger.info ">> Clicked Add to Contact Button"
end

