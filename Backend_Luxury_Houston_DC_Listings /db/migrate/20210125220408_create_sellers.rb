class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.string :telephone
      t.string :email_address
      t.string :occupation

      t.timestamps
    end
  end
end
