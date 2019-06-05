players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]
sorted_by_sport = Hash.new
names_array = Array.new

players.each do |hash_in_array|
  if sorted_by_sport.include?(hash_in_array[:sport])
    # add the name to the array
    names_array.push(hash_in_array[:name])
    # add the previous name that plays this sport to array
    names_array.push(sorted_by_sport[hash_in_array[:sport]])
    # add names_array to sorted_by_sport Hash
    sorted_by_sport[hash_in_array[:sport]] = names_array
  else
    sorted_by_sport[hash_in_array[:sport]] = hash_in_array[:name]
  end

end
puts names_array
puts sorted_by_sport
