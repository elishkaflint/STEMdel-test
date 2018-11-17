# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

puts "\nClearing databases........"
Character.delete_all
Film.delete_all

puts "\n"
csv_text = File.read(Rails.root.join('lib', 'data', 'initial_films.csv'))
csv = CSV.parse(csv_text)
csv.each do |row|
  f = Film.new
  f.name = row[0]
  f.year = row[1]
  f.pass_stemdel_test = row[2]
  f.image = row[3]
  f.save
  puts "[Saving film record to database: #{f.name}, #{f.year}, #{f.pass_stemdel_test}, image] saved"
end

puts "\nThere are now #{Film.count} films in the film table"

puts "\nRemoving headers"
@top_row = Film.find_by(year: "year")
@top_row.destroy

puts "\nThere are now #{Film.count} films in the film table"

puts "\n"
csv_text = File.read(Rails.root.join('lib', 'data', 'initial_characters.csv'))
csv = CSV.parse(csv_text)
csv.each do |row|
  c = Character.new
  c.actor_name = row[0]
  c.character_name = row[1]
  c.film_id = row[3]
  c.save
  puts "Saving character record to database: [#{c.actor_name}, #{c.character_name}, #{c.film_id}] saved"
end

puts "\nThere are now #{Character.count} characters in the film table"

# puts "\nRemoving headers"
# @top_row = Character.find_by(character_name: "character_name")
# @top_row.destroy
#
# puts "\nThere are now #{Character.count} films in the film table"
