require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |c|
    c.default_driver= :selenium
    c.default_max_wait_time=10
end