class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.boolean :is_wood
      t.boolean :is_carpet
      t.boolean :is_tiles
      t.string :lat
      t.string :lon
      t.integer :operating_radius
      t.decimal :rating

      t.timestamps
    end
  end
end
