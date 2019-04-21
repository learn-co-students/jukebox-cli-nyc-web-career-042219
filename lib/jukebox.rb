require 'pry'
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

def list(song)
  song.each_with_index do |e, i| 
    puts "#{i}. #{e}"
  end
end

def play(song)
  puts "Please enter a song name or number:"
  input = gets.chomp
  id = input.to_i
  
  song.each_with_index do |s, i|
    puts "Playing #{s}" if i == (id - 1) && id != 0
    puts "Playing #{s}" if s == input
  end
  
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(song)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit"
    case input
    when "list"
      list(song)
    when "play"
      play(song)
    when "help"
      help
    else
      "Please enter a command:"
    end
    input = gets.chomp
  end
  exit_jukebox
end