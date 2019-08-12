require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup
    @songs = Songs.new("Here I Go Again")
  end

  def test_get_song
    assert_equal("Here I Go Again", @songs.name())
  end

end
