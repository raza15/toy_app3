class CreateEducationBackgrounds < ActiveRecord::Migration[5.0]
  def change
    create_table :education_backgrounds do |t|
      t.integer :user_id
      t.string :highest_education_level
      t.string :university_of_highest_education_level

      t.timestamps
    end
  end
end
