class ReverseUser < ActiveRecord::Migration[7.0]
  def up
    user_ids = User.pluck(:id)
    user_reverse_ids = user_ids.reverse
    temp_id = User.ids.max
    arr = user_ids.zip(user_reverse_ids).map { |x| x.sort }.uniq
    leader_ids = Team.pluck(:id, :leader_id)
    Team.all.update_all(leader_id: nil)
    arr.each do |obj|
      next if obj.first == obj.last
      User.find(obj.first).update!(id: temp_id + 1)
      User.find(obj.last).update!(id: obj.first)
      User.find(temp_id + 1).update!(id: obj.last)
    end
    arr.each do |obj|
      leader_ids.each do |lead|
        next unless obj.include?(lead.last)
        if obj.first == lead.last
          Team.find(lead.first).update!(leader_id: obj.last) 
        else
          Team.find(lead.first).update!(leader_id: obj.first) 
        end
      end
    end
  end
end
