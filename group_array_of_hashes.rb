players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]
sports_hash = Hash.new

players.each do |hash_in_array|
  sports_hash[hash_in_array[:sport]] = hash_in_array[:name]
end
puts sports_hash
