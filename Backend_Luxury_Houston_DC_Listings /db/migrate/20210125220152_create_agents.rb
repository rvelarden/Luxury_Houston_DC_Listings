class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :telephone
      t.string :work_address
      t.string :email_address
      t.string :years_of_experience

      t.timestamps
    end
  end
end
