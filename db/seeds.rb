# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

puts "\nClearing the database........"
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
  puts "[Saving record to database: #{f.name}, #{f.year}, #{f.pass_stemdel_test}, image] saved"
end

puts "\nThere are now #{Film.count} films in the film table"


puts "\nRemoving headers"
@top_row = Film.find_by(year: "year")
@top_row.destroy

puts "\nThere are now #{Film.count} films in the film table"