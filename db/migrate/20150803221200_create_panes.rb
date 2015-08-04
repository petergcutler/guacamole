class CreatePanes < ActiveRecord::Migration
  def change
    create_table :panes do |t|
      t.string :title
      t.timestamps null: false
      t.references :trope, index: true#, foreign_key: true
    end
  end
end
