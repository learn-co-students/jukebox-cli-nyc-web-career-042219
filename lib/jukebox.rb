songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (array)
  i = 0
  array.each do |x|
    puts (i + 1).to_s + ". #{x}"
  end
end

def play (array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  sort = input.to_i
  
    if sort > 0 && sort < (array.length + 2)
      x = sort - 1
      puts "Playing #{array[x]}" 
    
    elsif sort == 0 && array.include?(input)
      puts "Playing #{input}"
  
    else
      puts "Invalid input, please try again"

    end
end

def exit_jukebox
  puts "Goodbye"
end

def run (array)
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    if input == "list"
      list
    elsif input == "play"
      play
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      break
    end
    
  end
end






