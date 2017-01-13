movies = {
  Star_wars: 4.5,
  Scar_face: 4.0,
  Prison_break: 3.5
}

puts "What you wanna do?"
choose = gets.chomp

case choose
when "add"
  puts "What movie do you wann add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What it's rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "added movie is already exist!"
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "edit"
  puts "What movie do you wanna edit?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Can't find the movie!"
  else
    puts "What his new rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "The movie #{title} has edit and his new rating #{rating}"
  end
else
  puts "Sorry, I didn't understand you."
end
