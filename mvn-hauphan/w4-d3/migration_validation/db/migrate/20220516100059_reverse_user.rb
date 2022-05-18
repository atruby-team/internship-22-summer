class ReverseUser < ActiveRecord::Migration[7.0]
  def up
    term = []
    User.all.reverse_each { |x| term.push(x) }
    term.each_with_index { |x, index| x.id = index + 1 }
    User.all.drop(User.all.size)
    term.each { |x| User.create(email: x.email, password: x.password, gender: x.gender, single?: x.single?, favorite_song: x.favorite_song, team_id: x.team_id) }
  end
end
