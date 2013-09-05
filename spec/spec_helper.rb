require 'rspec'
require 'watir-webdriver'
browser = Watir::Browser.new
RSpec.configure do |config|
config.before(:each) { @browser = browser }
config.after(:suite) { browser.close unless browser.nil?  }
end