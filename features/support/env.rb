require 'capybara/cucumber'
require 'selenium-webdriver'


options = Selenium::WebDriver::Chrome::Options.new
options.add_argument("--window-size=1920,1280")

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,
                             capabilities: options,
                                       browser: :chrome)
end

Capybara.default_driver = :chrome
Capybara.default_selector = :css