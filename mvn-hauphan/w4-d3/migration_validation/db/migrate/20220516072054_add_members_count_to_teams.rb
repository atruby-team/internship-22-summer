class AddMembersCountToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :members_count, :decimal
  end
end
