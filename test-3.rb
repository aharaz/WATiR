require "rubygems"
require "rspec"
require "watir-webdriver"
 
describe "www.google.com" do
  let(:browser) { @browser ||= Watir::Browser.new :firefox } 
  before { browser.goto "http://google.com" } 
  after { browser.close }
 
  it "It should search for WATiR in Google" do
    browser.text_field(:name => "q").set "watir"
    browser.button.click 
    browser.div(:id => "resultStats").wait_until_present
    browser.title.should == "watir - Google Search"
  end
end