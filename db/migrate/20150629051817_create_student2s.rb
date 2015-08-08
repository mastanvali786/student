class CreateStudent2s < ActiveRecord::Migration
  def change
    create_table :student2s do |t|
    	  t.string :student_name
      t.integer :student_no
      t.text :student_detail
      t.string :favourite_color
      t.boolean :is_phone_no_enabled
      t.string :email
      t.timestamps null: false

    end
  end

    
  
end
