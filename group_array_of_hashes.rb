players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]
sorted_by_sport = Hash.new
names_array = Array.new

players.each do |player_under_consideration|
  sport = player_under_consideration[:sport]
  name = player_under_consideration[:name]

  if sorted_by_sport[sport] == nil
    sorted_by_sport[sport] = [name]
  else
    sorted_by_sport[sport].push(name)
  end
end
puts sorted_by_sport



# OLD VERSION"

# if sorted_by_sport.include?(player_under_consideration[:sport])
#   # add the name to the array
#   names_array.push(player_under_consideration[:name])
#   # add the previous name that plays this sport to array
#   names_array.push(sorted_by_sport[player_under_consideration[:sport]])
#   # add names_array to sorted_by_sport Hash
#   sorted_by_sport[player_under_consideration[:sport]] = names_array
# else
#   sorted_by_sport[player_under_consideration[:sport]] = player_under_consideration[:name]
# end
