class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :airday
      t.integer :episodes
      t.string :image_url
      t.string :description
      t.string :trailer_url

      t.timestamps
    end
  end
end
