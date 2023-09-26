class AddCustomerToRequest < ActiveRecord::Migration[7.0]
  def change
    add_reference :requests, :customer, null: false, foreign_key: true
  end
end
