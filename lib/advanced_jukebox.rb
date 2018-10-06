#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'
my_songs = {
"Go Go GO" => '/Users/hassanmalik/dev/labs/jukebox-cli-dumbo-web-100818/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/hassanmalik/dev/labs/jukebox-cli-dumbo-web-100818/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/hassanmalik/dev/labs/jukebox-cli-dumbo-web-100818/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/hassanmalik/dev/labs/jukebox-cli-dumbo-web-100818/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/hassanmalik/dev/labs/jukebox-cli-dumbo-web-100818/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/hassanmalik/dev/labs/jukebox-cli-dumbo-web-100818/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/hassanmalik/dev/labs/jukebox-cli-dumbo-web-100818/audio/Emerald-Park/07.mp3'
}

def help
puts "I accept the following commands:\n - help : displays this help message\n - list : displays a list of songs you can play\n - play : lets you choose a song to play\n - exit : exits this program"
end



def list(my_songs)
  song_keys = my_songs.keys
  song_keys.each do |song|
    puts song
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  song_name = gets.chomp
  if my_songs.keys.include?(song_name)
    song_path = my_songs[song_name]
    puts "Playing #{song_name}"
    #puts song_path
    system "open #{song_path}"
  else
    puts "Invalid input, please try again"  
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  user_response = ""
  until user_response == "exit"
  puts "Please enter a command:"
  user_response = gets.chomp
  case user_response
  when "help"
  help
  when "list"
  list(my_songs)
  when "play"
  play(my_songs)
  when "exit" 
  exit_jukebox
  else
  puts "Invalid input, please try again"    
  end
  end
end
