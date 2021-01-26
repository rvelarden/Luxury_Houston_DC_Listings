class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :description
      t.string :number_of_beds
      t.string :number_of_baths
      t.integer :size
      t.string :price
      t.string :agent_id
      t.string :seller_id

      t.timestamps
    end
  end
end
