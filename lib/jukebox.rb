require 'pry'

#songs = [
#      "Phoenix - 1901",
#      "Tokyo Police Club - Wait Up",
#      "Sufjan Stevens - Too Much",
#      "The Naked and the Famous - Young Blood",
#      "(Far From) Home - Tiga",
#      "The Cults - Abducted",
#      "Phoenix - Consolation Prizes",
#      "Harry Chapin - Cats in the Cradle",
#      "Amos Lee - Keep It Loose, Keep It Tight"
#]
    
def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end
    
def list songs
  songs.each_with_index { | song, index | puts "#{index + 1}. #{song}" }
end

def play songs
  puts "Please enter a song name or number:"
  user_selection = gets.strip
  if (user_selection.match?(/\A-?\d+\Z/) && user_selection.to_i < songs.length+1 && user_selection.to_i > 0)
    puts "Playing #{songs[user_selection-1]}"
  elsif (songs.include? user_selection)
    puts "Playing #{user_selection}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run songs
  puts "Please enter a command:"
  command = gets.strip
  while (command != "exit") do
    #binding.pry
    case command
    when "play"
      play songs
    when "help"
      help
    when "list"
      list songs
    else
      puts "I didn't understand, sorry"
    end
  end
end