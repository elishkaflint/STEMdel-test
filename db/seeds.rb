# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'


# TODO Make this work! (Name column starting with a blank space means value not being picked up)
# Film.delete_all
# csv_text = File.read(Rails.root.join('lib', 'data', 'test.csv'))
# csv = CSV.parse(csv_text, :headers => true)
# puts csv
# csv.each do |row|
#   puts row.to_hash
#   f = Film.new
#   f.name = row['name']
#   f.year = row['year']
#   f.pass_stemdel_test = row['pass_stemdel_test']
#   f.save
#   puts "#{f.name}, #{f.year}, #{f.pass_stemdel_test} saved"
# end
#
# puts "There are now #{Film.count} films in the film table"

films = [
    { :name => "A Beautiful Mind", :year => "2001", :pass_stemdel_test => false },
    { :name => "Hidden Figures", :year => "2016", :pass_stemdel_test => true },
    { :name => "The Imitation Game", :year => "2014", :pass_stemdel_test => true },
    { :name => "Jurassic Park", :year => "1993", :pass_stemdel_test => true },
    { :name => "Avatar", :year => "2009", :pass_stemdel_test => true },
    { :name => "Bridget Jones's Diary", :year => "2001", :pass_stemdel_test => false },
    { :name => "Friends with Benefits", :year => "2011", :pass_stemdel_test => false },
    { :name => "The Circle", :year => "2017", :pass_stemdel_test => false },
    { :name => "Good Will Hunting", :year => "1997", :pass_stemdel_test => false },
    { :name => "First Man", :year => "2018", :pass_stemdel_test => false },
    { :name => "The Man Who Knew Infinity", :year => "2015", :pass_stemdel_test => false },
    { :name => "The Theory of Everything", :year => "2014", :pass_stemdel_test => true },
    { :name => "Iron Man", :year => "2008", :pass_stemdel_test => false },
    { :name => "Skyfall", :year => "2012", :pass_stemdel_test => false }
]

puts "\nClearing the database........"
Film.delete_all
puts "\n"
films.each do |row|
  f = Film.new
  f.name = row[:name]
  f.year = row[:year]
  f.pass_stemdel_test = row[:pass_stemdel_test]
  f.save
  puts "Saving record to database: [#{f.name}, #{f.year}, #{f.pass_stemdel_test}]"
end
puts "\nThere are now #{Film.count} films in the film table"


