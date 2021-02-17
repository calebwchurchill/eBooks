require 'appium_lib'
require 'selenium-webdriver'

desired_caps = {
  caps: {               
      deviceName: 'xxxxxxxxxx',
      automationName: 'UiAutomator2',
      app: 'xxxxxxxxxx',
      platformName: 'Android',
      newCommandTimeout: 3600,
      autoGrantPermissions: true,
      plartformVersion: "11",
    adbExecTimeout: "90000",
    disableAndroidWatchers: true,
    ignoreHiddenApiPolicyError: true
    
     },
      appium_lib: {
          server_url: 'http://localhost:4723/wd/hub'
      } 
}

$driver = Appium::Driver.new(desired_caps, false)
