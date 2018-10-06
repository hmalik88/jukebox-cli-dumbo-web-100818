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
	puts "I accept the following commands:\n - help : displays this help message\n - list : displays a list of songs you can play\n - play : lets you choose a song to play\n - exit : exits this program"
end

def list(songs)
	numbered_songs = []
	songs.each_with_index do |song, index|
		numbered_songs << "#{index+1}. #{song}"
	end
	numbered_songs.each do |numbered_song|
		puts numbered_song
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	song_name_or_number = gets.chomp
	if songs.include?(song_name_or_number)
		index_number = songs.index(song_name_or_number)
		puts "Playing #{songs[index_number]}"
	elsif song_name_or_number.to_i.between?(1,9)
		puts "Playing #{songs[song_name_or_number.to_i - 1]}"
	elsif song_name_or_number.to_i == song_name_or_number
		puts "Playing #{songs[song_name_or_number - 1]}"
	else
		puts "Invalid input, please try again"	
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs) 
	help
	user_response = ""
	until user_response == "exit"
	puts "Please enter a command:"
	user_response = gets.chomp
	case user_response
	when "help"
	help
	when "list"
	list(songs)
	when "play"
	play(songs)
	when "exit" 
	exit_jukebox		
	end
	end
end