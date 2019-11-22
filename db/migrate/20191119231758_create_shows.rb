class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :image_url, null: false
      t.string :video_url, null: false
      
      t.timestamps null: false
    end
  end
end
