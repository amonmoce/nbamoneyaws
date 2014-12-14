require './app'
require 'rake/testtask'

task :default => :spec

desc "Run all tests"
  Rake::TestTask.new(name=:spec) do |t|
  t.pattern = 'spec/*_spec.rb'
end

desc "Create DynamoDB tables"
  task :create do
  dynamo_db = AWS::DynamoDB.new
  table_name = 'Income'
  income = dynamo_db.tables.create(
    table_name, 5, 6,
    :hash_key => {id: :string}
  )
  sleep 1 while income.status == :creating
  puts "Table #{table_name} created on DynamoDB"
end

desc "Delete DynamoDB tables"
task :delete do
  dynamo_db = AWS::DynamoDB.new
  dynamo_db.tables.each do |x|
    if x.name == 'Income'
       x.delete
       puts "Table #{x.name} deleted from DynamoDB"
    end
  end

end
