require 'bundler/setup'
require 'activerecord-sqlserver-adapter'

ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)
$con = ActiveRecord::Base.connection

# class
class AnyRecord < ActiveRecord::Base
  self.table_name = '<TableName>'
end
