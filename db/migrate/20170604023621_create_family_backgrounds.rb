class CreateFamilyBackgrounds < ActiveRecord::Migration[5.0]
  def change
    create_table :family_backgrounds do |t|
      t.integer :user_id
      t.string :my_current_occupaion
      t.string :father_current_occupation
      t.string :mother_current_occupation
      t.integer :number_of_siblings

      t.timestamps
    end
  end
end
