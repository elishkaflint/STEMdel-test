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
    { :name => "A Beautiful Mind", :year => "2001", :pass_stemdel_test => false, :image => "https://upload.wikimedia.org/wikipedia/en/b/b8/A_Beautiful_Mind_Poster.jpg" },
    { :name => "Hidden Figures", :year => "2016", :pass_stemdel_test => true, :image => "https://m.media-amazon.com/images/M/MV5BMzg2Mzg4YmUtNDdkNy00NWY1LWE3NmEtZWMwNGNlMzE5YzU3XkEyXkFqcGdeQXVyMjA5MTIzMjQ@._V1_UX182_CR0,0,182,268_AL_.jpg" },
    { :name => "The Imitation Game", :year => "2014", :pass_stemdel_test => true, :image => "https://is4-ssl.mzstatic.com/image/thumb/Video52/v4/6a/8f/7f/6a8f7fb0-7624-a34e-19f6-7da387922d12/pr_source.lsr/268x0w.jpg" },
    { :name => "Jurassic Park", :year => "1993", :pass_stemdel_test => true, :image => "https://is3-ssl.mzstatic.com/image/thumb/Video128/v4/16/ec/1d/16ec1d49-bd88-f23c-393d-0a850c0ca1c9/contsched.rwjqgfdx.lsr/268x0w.jpg" },
    { :name => "Avatar", :year => "2009", :pass_stemdel_test => true, :image => "https://upload.wikimedia.org/wikipedia/en/thumb/b/b0/Avatar-Teaser-Poster.jpg/220px-Avatar-Teaser-Poster.jpg" },
    { :name => "Bridget Jones's Diary", :year => "2001", :pass_stemdel_test => false, :image => "https://images-na.ssl-images-amazon.com/images/I/51BRM4GZRQL._SY445_.jpg" },
    { :name => "Friends with Benefits", :year => "2011", :pass_stemdel_test => false, :image => "http://www.sonypictures.com/movies/friendswithbenefits/assets/images/onesheet.jpg" },
    { :name => "The Circle", :year => "2017", :pass_stemdel_test => false, :image => "https://in.bmscdn.com/iedb/movies/images/website/poster/large/the-circle-et00050335-08-12-2016-10-24-45.jpg" },
    { :name => "Good Will Hunting", :year => "1997", :pass_stemdel_test => false, :image => "https://upload.wikimedia.org/wikipedia/en/5/52/Good_Will_Hunting.png" },
    { :name => "First Man", :year => "2018", :pass_stemdel_test => false, :image => "https://i.imgur.com/S2Fc1jo.jpg" },
    { :name => "The Man Who Knew Infinity", :year => "2015", :pass_stemdel_test => false, :image => "https://m.media-amazon.com/images/M/MV5BMTU3Njg4MDM3OV5BMl5BanBnXkFtZTgwMjE5ODM3ODE@._V1_.jpg" },
    { :name => "The Theory of Everything", :year => "2014", :pass_stemdel_test => true, :image => "https://upload.wikimedia.org/wikipedia/en/6/67/The_Theory_of_Everything_%282014%29.jpg" },
    { :name => "Iron Man", :year => "2008", :pass_stemdel_test => false, :image => "https://images-na.ssl-images-amazon.com/images/I/51eDErsnV0L.jpg" },
    { :name => "Skyfall", :year => "2012", :pass_stemdel_test => false, :image => "https://images-na.ssl-images-amazon.com/images/I/51eDErsnV0L.jpg" }
]

puts "\nClearing the database........"
Film.delete_all
puts "\n"
films.each do |row|
  f = Film.new
  f.name = row[:name]
  f.year = row[:year]
  f.pass_stemdel_test = row[:pass_stemdel_test]
  f.image = row[:image]
  f.save
  puts "Saving record to database: [#{f.name}, #{f.year}, #{f.pass_stemdel_test}, image_url]"
end
puts "\nThere are now #{Film.count} films in the film table"


