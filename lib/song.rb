class Song
    attr_accessor :artist, :name

@@all = []

def initialize(name)
    @name = name 
    @@all << self
end 

def self.all 
    @@all
end 

def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
def self.new_by_filename(file_name)
   
   # file = file_name.split(" - ")[1]
   # artist = file_name.split(" - ")[0]
   # song = file.artist_name
   # song

    data = file_name.split(" - ")
    song = Song.new(data[1])
    #binding.pry
    song.artist_name = data[0]
    song 
 #binding.pry

end 



end 