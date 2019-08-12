class Rooms

  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @till = till
    @songs = []
  end

  def room_count
    return @songs.count
  end

  def add_song(song)
    @songs << song
  end

  def select(guest, song)
    if @songs.include?(song)
      @till += song.price()
      guest.buy(song.price())
    end
  end

end
