class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :url
      t.string :photo_url
      t.timestamps null: false
      t.references :pane, index: true#, foreign_key: true
    end
  end
end
