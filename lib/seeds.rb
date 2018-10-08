require 'csv'
tsv_text = File.read(Rails.root.join('lib', 'us_states', 'us-state-names.tsv'))
tsv = CSV.parse(tsv_text, :headers => true, :col_sep => "\t")
tsv.each do |row|
  s = State.new
  s.number = row['id']
  s.code = row['code']
  s.name = row['name']
  s.save
end

puts "There are now #{State.count} in the states table"
