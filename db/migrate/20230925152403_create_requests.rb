class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.boolean :is_wood
      t.boolean :is_carpet
      t.boolean :is_tiles
      t.string :lat
      t.string :lon
      t.decimal :floor_surface
      t.string :phone

      t.timestamps
    end
  end
end
