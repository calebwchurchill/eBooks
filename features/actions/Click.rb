require_relative 'Wait.rb'
require 'rspec'

class ClickElements
  
  @@aWait = WaitElement.new
  
  def tempclickXpath(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:xpath, @element).displayed? } 
    $driver.find_element(:xpath, @element).click
  end
  
  def clickXpath(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:xpath, @element).displayed? } 
    $driver.find_element(:xpath, @element).click
  end

  def clickHeaderLabel(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:xpath, "//android.widget.TextView[contains(@text,\'"+@element+"\')]").displayed? } 
    $driver.find_element(:xpath, "//android.widget.TextView[contains(@text,\'"+@element+"\')]").click
  end
  
  def clickId(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:id, @element).displayed? } 
    $driver.find_element(:id, @element).click
  end

  def clickText(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:text, @element).displayed? } 
    $driver.find_element(:text, @element).click
  end

  def clickAccessibilityId(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:accessibility_id, @element).displayed? } 
    $driver.find_element(:accessibility_id, @element).click
  end
end