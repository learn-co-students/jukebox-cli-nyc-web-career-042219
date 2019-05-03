require 'Pry'

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
  song_numbers = songs.each_index
  song_numbers.each { |song_num| puts "#{song_num + 1}. #{songs[song_num]}" }
end


def play(songs)
  song_numbers = []
  song_enum = songs.each_index
  song_enum.each { |song_num| song_numbers << (song_num + 1)}
  puts "Please enter a song name or number:"
  binding.pry
  input = gets.chomp
  case input
  when input == songs.any? do |song|
    puts "Playing #{song}"
  end
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  case input
  when "list"
    list(songs)
  when "help"
    help()
  when "play"
    play(songs)
  when "exit"
    exit_jukebox()
  end
end
