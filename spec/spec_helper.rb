require 'employee'
require 'product'
require 'transaction'
require 'Gemfile'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["test"])

RSpec.configure do |config|
  config.before(:each) do
    Task.all.each { |employee| employee.destroy}
  end
end
