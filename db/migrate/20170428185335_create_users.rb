class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :last_name
    	t.date :birthdate
    	t.string :gender
    	t.string :city
    	t.string :address
    	t.string :type
    	t.string :phone_number
    	t.string :dni
      t.timestamps
    end
  end
end
