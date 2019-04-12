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
	songs.each_with_index do |value, index|
		puts "#{index + 1}. #{value}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	v = gets.chomp
	if songs.include?(v)
		puts "Playing #{v}"
	elsif (1..10).include?(v.to_i)
		song = songs[v.to_i - 1]
		puts "Playing #{song}"
	else
		puts "Invalid input, please try again"
	end
end

def exit_jukebox
	puts "Goodbye"
	return
end

def run(songs)
	help
	puts "Please enter a command:"
	var = gets.chomp
	if var != "exit"
		if var == 'list'
			list(songs)
		elsif var == "play"
			play(songs)
		elsif var == "help"
			help
		end
		run(songs)
	elsif var == "exit"
		exit_jukebox
	end
end