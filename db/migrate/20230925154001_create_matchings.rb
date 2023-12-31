class CreateMatchings < ActiveRecord::Migration[7.0]
  def change
    create_table :matchings do |t|
      t.integer :rank
      t.references :request, null: false, foreign_key: true
      t.references :partner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
