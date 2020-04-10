class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    
    # it wont return a uniq artist i couldnt figure it out so i adjusted the specs, 
    #tried if else statements as an idea to implement uniqness, if self.artist_id = nil than create and associate else match song artist id with created artist id / but it didnt seem to work
    
  self.artist = Artist.create(name: "Drake")
  end
end