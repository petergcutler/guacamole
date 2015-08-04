class CreateTropes < ActiveRecord::Migration
  def change
    create_table :tropes do |t|
      t.string :title
      t.timestamps null: false
      t.references :user, index: true#, foreign_key: true
    end
  end
end
