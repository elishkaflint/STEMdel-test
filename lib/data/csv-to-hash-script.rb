require 'csv'

csv = File.read("jobs-shortlist.csv")
array = []
CSV.parse(csv, headers: true).each do |row|
  array.push(row.to_h)
end

p array