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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
  # numbered_list(songs).each {|k, v| puts "#{k}. #{v}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  users_input = gets.chomp
    if list(songs).include?(users_input)
     puts "Playing #{users_input}." 
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    answer = gets.chomp
    # case answer
    #   when "list"
    #     list(songs)
    #   when "play"
    #     play(songs)
    #   when "help"
    #     help

      break if answer == "exit"
  
    end
    # end
  exit_jukebox
end
