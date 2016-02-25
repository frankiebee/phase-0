# Create a Playlist from Driver Code

# I worked on this challenge [with: Robbie Santos ].
# I spent [#] hours on this challenge.


# Pseudocode



# Initial Solution

class Song
  attr_accessor :title, :artist
  def initialize(title, artist)
  @title = title
  @artist = artist
  end

  def play
    puts "Now Playing #{@title} - #{@artist}"
    sleep(1)
  end

end

class Playlist < Song
  attr_accessor :songs
  def initialize(*songs)
    @songs = songs
  end

  def add(*name)
    name.each{|song|@songs << song}
  end

  def remove(song)
    @songs.delete(song)
  end

  def play_all
    @songs.each {|song| song.play}
  end

  def includes?(song)
    @songs.include?(song)
  end

  def display
    puts "Current Playlist:"
    songs.each { |song| puts "Song Title: #{song.title}  #{song.artist}"}
    end
  end

  def num_of_tracks
    @songs.length
  end
end


# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
# What concepts did you review in this challenge?
# -Classes are cool i like classes.

# What is still confusing to you about Ruby?
# -Nothing. I feel as if ruby and i are good friends... sometimes.

# What are you going to study to get more prepared for Phase 1?
# -Inheritance and stuff. Also algorithms.





