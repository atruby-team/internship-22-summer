class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.belongs_to :leader, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
