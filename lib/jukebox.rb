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
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  res = gets.chomp
  if songs.include?(res) 
    puts "Playing #{res}" 
  elsif (res.to_i.to_s == res && songs[res.to_i - 1] != nil)
    puts "Playing #{songs[res.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  cmd = gets.chomp 
  until cmd == "exit"
    puts "Please enter a command:"
    cmd = gets.chomp 
    case cmd
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else
      puts "Error"
    end
  end
  exit_jukebox
end
