require 'appium_lib'

class AndroidDriver
  attr_reader :driver
  @driver = nil

  def initialize
    desired_caps = {
        caps: {
            appiumVersion: '1.8.1',
            platformName: 'Android',
            platformVersion: '7.0',
            browserName: '',
            deviceName: 'Pixel_2_API_28',
            udid: 'emulator-5554',
            app: 'D:\....\Assignment\bdd_appium_android\lib\apk\ContactManager.apk',
            appActivity: 'com.example.android.contactmanager.ContactManager',
            appPackage: 'com.example.android.contactmanager'
        }
    }

    @driver = Appium::Driver.new(desired_caps)
    @driver.start_driver
  end

  # to stop driver
  def stop_app
    @driver.driver_quit
  end
end