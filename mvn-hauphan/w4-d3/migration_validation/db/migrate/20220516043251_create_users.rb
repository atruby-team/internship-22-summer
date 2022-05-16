class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, index: { unique: true }
      t.string :password, null: false
      t.string :gender, null: false
      t.boolean :single?
      t.string :favorite_film
      t.references :team, foreign_key: { to_table: :teams }

      t.timestamps
    end
  end
end
