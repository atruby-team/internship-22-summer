class ChangeFavoriteFilmToFavotiteSongUsers < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.rename :favorite_film, :favorite_song
    end
  end
end
