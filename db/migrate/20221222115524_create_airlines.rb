class CreateAirlines < ActiveRecord::Migration[7.0]
  def change
    create_table :airlines do |t|
      t.string :name
      t.string :slug
      t.string :image_url
      t.integer :average_score

      t.timestamps
    end
  end
end
