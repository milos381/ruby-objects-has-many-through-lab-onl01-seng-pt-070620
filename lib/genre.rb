class Genre

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @@all
  end


  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artist
    songs.each do |song|
      song.artist
    end
  end

end
