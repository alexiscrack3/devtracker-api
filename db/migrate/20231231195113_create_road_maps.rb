class CreateRoadMaps < ActiveRecord::Migration[7.1]
  def change
    create_table :road_maps do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
